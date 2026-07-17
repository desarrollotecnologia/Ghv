-- ============================================================
-- MIGRACION: GESTOR DE CALIDAD -> ANALISTA DE CALIDAD
-- Regla: si el "ANALISTA..." ya existe en la MISMA area, mover
--        empleados/retirados ahi y eliminar el "GESTOR"; si no
--        existe, renombrar el "GESTOR" a "ANALISTA".
--
-- Casos (confirmados con GH):
--  1) GESTOR DE CALIDAD DESPOSTE (DESPOSTE/CALIDAD DESPOSTE)
--       -> ANALISTA DE CALIDAD DESPOSTE (ya existe) => MOVER + ELIMINAR
--  2) GESTOR DE CALIDAD LINEA BENEFICIO (DESPOSTE/CALIDAD DESPOSTE)
--       -> ANALISTA DE CALIDAD LINEA BENEFICIO (no existe en esa area) => RENOMBRAR
--  3) GESTOR CALIDAD (DPTO CALIDAD/DIRECCION DPTO CALIDAD)
--       -> ANALISTA CALIDAD (no existe en esa area) => RENOMBRAR
-- ============================================================

USE gestio_humana;

START TRANSACTION;

-- ---------- Resolver ids de area ----------
SET @area_calidad_desposte := (
  SELECT a.id FROM area a JOIN departamento d ON d.id=a.departamento_id
  WHERE UPPER(TRIM(a.nombre))='CALIDAD DESPOSTE' AND UPPER(TRIM(d.nombre))='DESPOSTE' LIMIT 1);
SET @area_dir_calidad := (
  SELECT a.id FROM area a JOIN departamento d ON d.id=a.departamento_id
  WHERE UPPER(TRIM(a.nombre))='DIRECCION DPTO CALIDAD' AND UPPER(TRIM(d.nombre))='DPTO CALIDAD' LIMIT 1);

-- ============================================================
-- CASO 1: MOVER (GESTOR DE CALIDAD DESPOSTE -> ANALISTA DE CALIDAD DESPOSTE)
-- ============================================================
SET @src1 := (SELECT id_perfil FROM perfil_ocupacional
  WHERE area_id=@area_calidad_desposte AND UPPER(TRIM(perfil_ocupacional))='GESTOR DE CALIDAD DESPOSTE' LIMIT 1);
SET @dst1 := (SELECT id_perfil FROM perfil_ocupacional
  WHERE area_id=@area_calidad_desposte AND UPPER(TRIM(perfil_ocupacional))='ANALISTA DE CALIDAD DESPOSTE' LIMIT 1);

UPDATE empleado SET id_perfil_ocupacional=@dst1
  WHERE @src1 IS NOT NULL AND @dst1 IS NOT NULL AND id_perfil_ocupacional=@src1;
UPDATE retirado SET id_perfil_ocupacional=@dst1
  WHERE @src1 IS NOT NULL AND @dst1 IS NOT NULL AND id_perfil_ocupacional=@src1;
DELETE FROM perfil_ocupacional
  WHERE @src1 IS NOT NULL AND @dst1 IS NOT NULL AND id_perfil=@src1;

-- ============================================================
-- CASO 2: RENOMBRAR (GESTOR DE CALIDAD LINEA BENEFICIO -> ANALISTA ...)
-- ============================================================
UPDATE perfil_ocupacional
  SET perfil_ocupacional='ANALISTA DE CALIDAD LINEA BENEFICIO'
  WHERE area_id=@area_calidad_desposte
    AND UPPER(TRIM(perfil_ocupacional))='GESTOR DE CALIDAD LINEA BENEFICIO'
    AND NOT EXISTS (
      SELECT 1 FROM (SELECT * FROM perfil_ocupacional) p2
      WHERE p2.area_id=@area_calidad_desposte
        AND UPPER(TRIM(p2.perfil_ocupacional))='ANALISTA DE CALIDAD LINEA BENEFICIO');

-- ============================================================
-- CASO 3: RENOMBRAR (GESTOR CALIDAD -> ANALISTA CALIDAD)
-- ============================================================
UPDATE perfil_ocupacional
  SET perfil_ocupacional='ANALISTA CALIDAD'
  WHERE area_id=@area_dir_calidad
    AND UPPER(TRIM(perfil_ocupacional))='GESTOR CALIDAD'
    AND NOT EXISTS (
      SELECT 1 FROM (SELECT * FROM perfil_ocupacional) p2
      WHERE p2.area_id=@area_dir_calidad
        AND UPPER(TRIM(p2.perfil_ocupacional))='ANALISTA CALIDAD');

COMMIT;

-- ============================================================
-- Verificacion
-- ============================================================
SELECT d.nombre AS departamento, a.nombre AS area, p.perfil_ocupacional,
  (SELECT COUNT(*) FROM empleado e WHERE e.id_perfil_ocupacional=p.id_perfil) AS activos,
  (SELECT COUNT(*) FROM retirado r WHERE r.id_perfil_ocupacional=p.id_perfil) AS retirados
FROM perfil_ocupacional p
JOIN area a ON a.id=p.area_id
JOIN departamento d ON d.id=a.departamento_id
WHERE UPPER(p.perfil_ocupacional) LIKE '%CALIDAD%'
  AND (UPPER(p.perfil_ocupacional) LIKE '%GESTOR%' OR UPPER(p.perfil_ocupacional) LIKE '%ANALISTA%')
ORDER BY d.nombre, a.nombre, p.perfil_ocupacional;
