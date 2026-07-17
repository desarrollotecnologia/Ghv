-- ============================================================
-- MIGRACION: Unificar / renombrar / eliminar cargos por area
-- Reglas:
--   VERDE  -> unificar (reasignar empleados al cargo que queda y borrar repetidos)
--   AZUL   -> renombrar COORDINADOR LIMPIEZA Y DESINFECCION -> SUPERVISOR ...
--   ROJO   -> eliminar SOLO si el cargo no tiene empleados/retirados asignados
-- ============================================================

USE gestio_humana;

START TRANSACTION;

-- Helper: reasigna empleados/retirados de un cargo origen a uno destino (por id_perfil)
-- Se hace inline en cada bloque para claridad.

-- ============================================================
-- AREA 1: LINEA DE SACRIFICIO
--  VERDE: AUXILIAR DE LINEA -> AUXILIAR LINEA DE BENEFICIO
--  ROJO:  eliminar COORDINADOR DE LINEA (si vacio)
-- ============================================================
SET @a_linea := (SELECT id FROM area WHERE UPPER(TRIM(nombre)) = 'LINEA DE SACRIFICIO' LIMIT 1);

-- Asegurar cargo destino
INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @a_linea, 'AUXILIAR LINEA DE BENEFICIO', NULL
WHERE @a_linea IS NOT NULL
  AND NOT EXISTS (SELECT 1 FROM perfil_ocupacional WHERE area_id=@a_linea AND UPPER(TRIM(perfil_ocupacional))='AUXILIAR LINEA DE BENEFICIO');

SET @p_linea_keep := (SELECT id_perfil FROM perfil_ocupacional WHERE area_id=@a_linea AND UPPER(TRIM(perfil_ocupacional))='AUXILIAR LINEA DE BENEFICIO' LIMIT 1);

UPDATE empleado e
JOIN perfil_ocupacional lp ON TRIM(e.id_perfil_ocupacional)=TRIM(lp.id_perfil)
SET e.id_perfil_ocupacional=@p_linea_keep
WHERE lp.area_id=@a_linea AND UPPER(TRIM(lp.perfil_ocupacional))='AUXILIAR DE LINEA';

UPDATE retirado r
JOIN perfil_ocupacional lp ON TRIM(r.id_perfil_ocupacional)=TRIM(lp.id_perfil)
SET r.id_perfil_ocupacional=@p_linea_keep
WHERE lp.area_id=@a_linea AND UPPER(TRIM(lp.perfil_ocupacional))='AUXILIAR DE LINEA';

DELETE p FROM perfil_ocupacional p
WHERE p.area_id=@a_linea AND UPPER(TRIM(p.perfil_ocupacional))='AUXILIAR DE LINEA';

-- ROJO: COORDINADOR DE LINEA (solo si vacio)
DELETE p FROM perfil_ocupacional p
WHERE p.area_id=@a_linea AND UPPER(TRIM(p.perfil_ocupacional))='COORDINADOR DE LINEA'
  AND NOT EXISTS (SELECT 1 FROM empleado e WHERE TRIM(COALESCE(e.id_perfil_ocupacional,''))=TRIM(p.id_perfil))
  AND NOT EXISTS (SELECT 1 FROM retirado r WHERE TRIM(COALESCE(r.id_perfil_ocupacional,''))=TRIM(p.id_perfil));

-- ============================================================
-- AREA 2: LIMPIEZA Y DESINFECCION (DPTO CALIDAD)
--  ROJO:  eliminar AUXILIAR DE CALIDAD (si vacio)
--  VERDE: AUXILIAR ... DE BENEFICIO -> AUXILIAR DE LIMPIEZA Y DESINFECCION
--  AZUL:  COORDINADOR LIMPIEZA Y DESINFECCION -> SUPERVISOR LIMPIEZA Y DESINFECCION
-- ============================================================
SET @a_lyd := (
    SELECT a.id FROM area a JOIN departamento d ON d.id=a.departamento_id
    WHERE UPPER(TRIM(a.nombre))='LIMPIEZA Y DESINFECCION' AND UPPER(TRIM(d.nombre))='DPTO CALIDAD' LIMIT 1
);

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @a_lyd, 'AUXILIAR DE LIMPIEZA Y DESINFECCION', NULL
WHERE @a_lyd IS NOT NULL
  AND NOT EXISTS (SELECT 1 FROM perfil_ocupacional WHERE area_id=@a_lyd AND UPPER(TRIM(perfil_ocupacional))='AUXILIAR DE LIMPIEZA Y DESINFECCION');

SET @p_lyd_keep := (SELECT id_perfil FROM perfil_ocupacional WHERE area_id=@a_lyd AND UPPER(TRIM(perfil_ocupacional))='AUXILIAR DE LIMPIEZA Y DESINFECCION' LIMIT 1);

UPDATE empleado e
JOIN perfil_ocupacional lp ON TRIM(e.id_perfil_ocupacional)=TRIM(lp.id_perfil)
SET e.id_perfil_ocupacional=@p_lyd_keep
WHERE lp.area_id=@a_lyd AND UPPER(TRIM(lp.perfil_ocupacional))='AUXILIAR DE LIMPIEZA Y DESINFECCION DE BENEFICIO';

UPDATE retirado r
JOIN perfil_ocupacional lp ON TRIM(r.id_perfil_ocupacional)=TRIM(lp.id_perfil)
SET r.id_perfil_ocupacional=@p_lyd_keep
WHERE lp.area_id=@a_lyd AND UPPER(TRIM(lp.perfil_ocupacional))='AUXILIAR DE LIMPIEZA Y DESINFECCION DE BENEFICIO';

DELETE p FROM perfil_ocupacional p
WHERE p.area_id=@a_lyd AND UPPER(TRIM(p.perfil_ocupacional))='AUXILIAR DE LIMPIEZA Y DESINFECCION DE BENEFICIO';

-- AZUL: renombrar coordinador -> supervisor (si no existe ya el supervisor)
UPDATE perfil_ocupacional
SET perfil_ocupacional='SUPERVISOR DE LIMPIEZA Y DESINFECCION'
WHERE area_id=@a_lyd AND UPPER(TRIM(perfil_ocupacional))='COORDINADOR DE LIMPIEZA Y DESINFECCION'
  AND NOT EXISTS (
      SELECT 1 FROM (SELECT id_perfil FROM perfil_ocupacional WHERE area_id=@a_lyd AND UPPER(TRIM(perfil_ocupacional))='SUPERVISOR DE LIMPIEZA Y DESINFECCION') x
  );

-- ROJO: AUXILIAR DE CALIDAD en LyD (solo si vacio)
DELETE p FROM perfil_ocupacional p
WHERE p.area_id=@a_lyd AND UPPER(TRIM(p.perfil_ocupacional))='AUXILIAR DE CALIDAD'
  AND NOT EXISTS (SELECT 1 FROM empleado e WHERE TRIM(COALESCE(e.id_perfil_ocupacional,''))=TRIM(p.id_perfil))
  AND NOT EXISTS (SELECT 1 FROM retirado r WHERE TRIM(COALESCE(r.id_perfil_ocupacional,''))=TRIM(p.id_perfil));

-- ============================================================
-- AREA 3: PRODUCCION DESPOSTE (DESPOSTE)
--  ROJO: eliminar (si vacio) COORDINADOR DE DESPOSTE, GESTOR DE DESPOSTE,
--        GESTOR DE INFORMACION, GESTOR DE PORCIONADO
-- ============================================================
SET @a_prod_desp := (
    SELECT a.id FROM area a JOIN departamento d ON d.id=a.departamento_id
    WHERE UPPER(TRIM(a.nombre))='PRODUCCION DESPOSTE' AND UPPER(TRIM(d.nombre))='DESPOSTE' LIMIT 1
);

DELETE p FROM perfil_ocupacional p
WHERE p.area_id=@a_prod_desp
  AND UPPER(TRIM(p.perfil_ocupacional)) IN ('COORDINADOR DE DESPOSTE','GESTOR DE DESPOSTE','GESTOR DE INFORMACION','GESTOR DE PORCIONADO')
  AND NOT EXISTS (SELECT 1 FROM empleado e WHERE TRIM(COALESCE(e.id_perfil_ocupacional,''))=TRIM(p.id_perfil))
  AND NOT EXISTS (SELECT 1 FROM retirado r WHERE TRIM(COALESCE(r.id_perfil_ocupacional,''))=TRIM(p.id_perfil));

-- ============================================================
-- AREA 4: LOGISTICA DESPOSTE (DESPOSTE)
--  VERDE: AUXILIAR LOGISTICA + AUXILIAR LOGISTICA DESPOSTE -> AUXILIAR DE LOGISTICA
--  ROJO:  eliminar GESTOR DE LOGISTICA (si vacio)
-- ============================================================
SET @a_log_desp := (
    SELECT a.id FROM area a JOIN departamento d ON d.id=a.departamento_id
    WHERE UPPER(TRIM(a.nombre))='LOGISTICA DESPOSTE' AND UPPER(TRIM(d.nombre))='DESPOSTE' LIMIT 1
);

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @a_log_desp, 'AUXILIAR DE LOGISTICA', NULL
WHERE @a_log_desp IS NOT NULL
  AND NOT EXISTS (SELECT 1 FROM perfil_ocupacional WHERE area_id=@a_log_desp AND UPPER(TRIM(perfil_ocupacional))='AUXILIAR DE LOGISTICA');

SET @p_log_keep := (SELECT id_perfil FROM perfil_ocupacional WHERE area_id=@a_log_desp AND UPPER(TRIM(perfil_ocupacional))='AUXILIAR DE LOGISTICA' LIMIT 1);

UPDATE empleado e
JOIN perfil_ocupacional lp ON TRIM(e.id_perfil_ocupacional)=TRIM(lp.id_perfil)
SET e.id_perfil_ocupacional=@p_log_keep
WHERE lp.area_id=@a_log_desp AND UPPER(TRIM(lp.perfil_ocupacional)) IN ('AUXILIAR LOGISTICA','AUXILIAR LOGISTICA DESPOSTE');

UPDATE retirado r
JOIN perfil_ocupacional lp ON TRIM(r.id_perfil_ocupacional)=TRIM(lp.id_perfil)
SET r.id_perfil_ocupacional=@p_log_keep
WHERE lp.area_id=@a_log_desp AND UPPER(TRIM(lp.perfil_ocupacional)) IN ('AUXILIAR LOGISTICA','AUXILIAR LOGISTICA DESPOSTE');

DELETE p FROM perfil_ocupacional p
WHERE p.area_id=@a_log_desp AND UPPER(TRIM(p.perfil_ocupacional)) IN ('AUXILIAR LOGISTICA','AUXILIAR LOGISTICA DESPOSTE');

DELETE p FROM perfil_ocupacional p
WHERE p.area_id=@a_log_desp AND UPPER(TRIM(p.perfil_ocupacional))='GESTOR DE LOGISTICA'
  AND NOT EXISTS (SELECT 1 FROM empleado e WHERE TRIM(COALESCE(e.id_perfil_ocupacional,''))=TRIM(p.id_perfil))
  AND NOT EXISTS (SELECT 1 FROM retirado r WHERE TRIM(COALESCE(r.id_perfil_ocupacional,''))=TRIM(p.id_perfil));

-- ============================================================
-- AREA 5: CALIDAD DESPOSTE (DESPOSTE)
--  ROJO: eliminar (si vacio) GESTOR DE CALIDAD DESPOSTE, GESTOR DE CALIDAD LINEA BENEFICIO
-- ============================================================
SET @a_cal_desp := (
    SELECT a.id FROM area a JOIN departamento d ON d.id=a.departamento_id
    WHERE UPPER(TRIM(a.nombre))='CALIDAD DESPOSTE' AND UPPER(TRIM(d.nombre))='DESPOSTE' LIMIT 1
);

DELETE p FROM perfil_ocupacional p
WHERE p.area_id=@a_cal_desp
  AND UPPER(TRIM(p.perfil_ocupacional)) IN ('GESTOR DE CALIDAD DESPOSTE','GESTOR DE CALIDAD LINEA BENEFICIO')
  AND NOT EXISTS (SELECT 1 FROM empleado e WHERE TRIM(COALESCE(e.id_perfil_ocupacional,''))=TRIM(p.id_perfil))
  AND NOT EXISTS (SELECT 1 FROM retirado r WHERE TRIM(COALESCE(r.id_perfil_ocupacional,''))=TRIM(p.id_perfil));

-- ============================================================
-- AREA 6: LAVANDERIA (DPTO CALIDAD)
--  DUPLICADO: AUXILIAR DE LAVANDERIA (con y sin tilde) -> dejar uno sin tilde
-- ============================================================
SET @a_lav := (
    SELECT a.id FROM area a JOIN departamento d ON d.id=a.departamento_id
    WHERE UPPER(TRIM(a.nombre))='LAVANDERIA' AND UPPER(TRIM(d.nombre))='DPTO CALIDAD' LIMIT 1
);

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @a_lav, 'AUXILIAR DE LAVANDERIA', NULL
WHERE @a_lav IS NOT NULL
  AND NOT EXISTS (SELECT 1 FROM perfil_ocupacional WHERE area_id=@a_lav AND UPPER(TRIM(perfil_ocupacional))='AUXILIAR DE LAVANDERIA');

SET @p_lav_keep := (SELECT id_perfil FROM perfil_ocupacional WHERE area_id=@a_lav AND UPPER(TRIM(perfil_ocupacional))='AUXILIAR DE LAVANDERIA' LIMIT 1);

UPDATE empleado e
JOIN perfil_ocupacional lp ON TRIM(e.id_perfil_ocupacional)=TRIM(lp.id_perfil)
SET e.id_perfil_ocupacional=@p_lav_keep
WHERE lp.area_id=@a_lav AND UPPER(TRIM(lp.perfil_ocupacional))='AUXILIAR DE LAVANDERÍA' AND lp.id_perfil<>@p_lav_keep;

UPDATE retirado r
JOIN perfil_ocupacional lp ON TRIM(r.id_perfil_ocupacional)=TRIM(lp.id_perfil)
SET r.id_perfil_ocupacional=@p_lav_keep
WHERE lp.area_id=@a_lav AND UPPER(TRIM(lp.perfil_ocupacional))='AUXILIAR DE LAVANDERÍA' AND lp.id_perfil<>@p_lav_keep;

DELETE p FROM perfil_ocupacional p
WHERE p.area_id=@a_lav AND UPPER(TRIM(p.perfil_ocupacional))='AUXILIAR DE LAVANDERÍA' AND p.id_perfil<>@p_lav_keep;

COMMIT;

-- ============================================================
-- VERIFICACION: cargos que quedaron por area intervenida
-- ============================================================
SELECT d.nombre AS departamento, a.nombre AS area, p.perfil_ocupacional
FROM perfil_ocupacional p
JOIN area a ON a.id=p.area_id
JOIN departamento d ON d.id=a.departamento_id
WHERE a.id IN (@a_linea, @a_lyd, @a_prod_desp, @a_log_desp, @a_cal_desp, @a_lav)
ORDER BY d.nombre, a.nombre, p.perfil_ocupacional;

-- Cargos ROJO que NO se pudieron borrar por tener empleados (para avisar)
SELECT d.nombre AS departamento, a.nombre AS area, p.perfil_ocupacional,
       (SELECT COUNT(*) FROM empleado e WHERE TRIM(COALESCE(e.id_perfil_ocupacional,''))=TRIM(p.id_perfil)) AS empleados_activos,
       (SELECT COUNT(*) FROM retirado r WHERE TRIM(COALESCE(r.id_perfil_ocupacional,''))=TRIM(p.id_perfil)) AS retirados
FROM perfil_ocupacional p
JOIN area a ON a.id=p.area_id
JOIN departamento d ON d.id=a.departamento_id
WHERE (
    (a.id=@a_linea AND UPPER(TRIM(p.perfil_ocupacional))='COORDINADOR DE LINEA')
    OR (a.id=@a_lyd AND UPPER(TRIM(p.perfil_ocupacional))='AUXILIAR DE CALIDAD')
    OR (a.id=@a_prod_desp AND UPPER(TRIM(p.perfil_ocupacional)) IN ('COORDINADOR DE DESPOSTE','GESTOR DE DESPOSTE','GESTOR DE INFORMACION','GESTOR DE PORCIONADO'))
    OR (a.id=@a_log_desp AND UPPER(TRIM(p.perfil_ocupacional))='GESTOR DE LOGISTICA')
    OR (a.id=@a_cal_desp AND UPPER(TRIM(p.perfil_ocupacional)) IN ('GESTOR DE CALIDAD DESPOSTE','GESTOR DE CALIDAD LINEA BENEFICIO'))
)
ORDER BY d.nombre, a.nombre, p.perfil_ocupacional;
