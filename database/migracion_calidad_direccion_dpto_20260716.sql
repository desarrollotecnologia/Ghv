-- ============================================================
-- MIGRACION: Ajuste de cargos en DPTO CALIDAD / DIRECCION DPTO CALIDAD
--  🔴 Eliminar:            ANALISTA DE INFORMACION, GERENTE DE CALIDAD
--  🔵 Cambiar por:         COORDINADOR DE CALIDAD -> JEFE DE CALIDAD
--  🟢 Cambiar por:         GESTOR CALIDAD (ya renombrado a ANALISTA CALIDAD) -> ANALISTA DE CALIDAD
-- Regla renombrado: si el destino ya existe en la MISMA area, mover
-- y eliminar; si no existe, renombrar. Scope: solo esta area.
-- ============================================================

USE gestio_humana;

START TRANSACTION;

SET @area := (
  SELECT a.id FROM area a JOIN departamento d ON d.id=a.departamento_id
  WHERE UPPER(TRIM(a.nombre))='DIRECCION DPTO CALIDAD'
    AND UPPER(TRIM(d.nombre))='DPTO CALIDAD' LIMIT 1);

-- ============================================================
-- 🔴 ELIMINAR: ANALISTA DE INFORMACION, GERENTE DE CALIDAD
-- (desligar inactivos/retirados y borrar el cargo)
-- ============================================================
UPDATE empleado e
JOIN perfil_ocupacional p ON p.id_perfil=e.id_perfil_ocupacional
SET e.id_perfil_ocupacional=NULL
WHERE p.area_id=@area
  AND UPPER(TRIM(p.perfil_ocupacional)) IN ('ANALISTA DE INFORMACION','GERENTE DE CALIDAD');

UPDATE retirado r
JOIN perfil_ocupacional p ON p.id_perfil=r.id_perfil_ocupacional
SET r.id_perfil_ocupacional=NULL
WHERE p.area_id=@area
  AND UPPER(TRIM(p.perfil_ocupacional)) IN ('ANALISTA DE INFORMACION','GERENTE DE CALIDAD');

DELETE FROM perfil_ocupacional
WHERE area_id=@area
  AND UPPER(TRIM(perfil_ocupacional)) IN ('ANALISTA DE INFORMACION','GERENTE DE CALIDAD');

-- ============================================================
-- 🔵 COORDINADOR DE CALIDAD -> JEFE DE CALIDAD
-- ============================================================
-- Si JEFE DE CALIDAD ya existe en el area: mover y eliminar coordinador
UPDATE empleado e
JOIN perfil_ocupacional src ON src.id_perfil=e.id_perfil_ocupacional
JOIN perfil_ocupacional dst ON dst.area_id=@area AND UPPER(TRIM(dst.perfil_ocupacional))='JEFE DE CALIDAD'
SET e.id_perfil_ocupacional=dst.id_perfil
WHERE src.area_id=@area AND UPPER(TRIM(src.perfil_ocupacional))='COORDINADOR DE CALIDAD';
UPDATE retirado r
JOIN perfil_ocupacional src ON src.id_perfil=r.id_perfil_ocupacional
JOIN perfil_ocupacional dst ON dst.area_id=@area AND UPPER(TRIM(dst.perfil_ocupacional))='JEFE DE CALIDAD'
SET r.id_perfil_ocupacional=dst.id_perfil
WHERE src.area_id=@area AND UPPER(TRIM(src.perfil_ocupacional))='COORDINADOR DE CALIDAD';
DELETE FROM perfil_ocupacional
WHERE area_id=@area AND UPPER(TRIM(perfil_ocupacional))='COORDINADOR DE CALIDAD'
  AND EXISTS (SELECT 1 FROM (SELECT * FROM perfil_ocupacional) p2
              WHERE p2.area_id=@area AND UPPER(TRIM(p2.perfil_ocupacional))='JEFE DE CALIDAD');
-- Si NO existe JEFE DE CALIDAD: renombrar
UPDATE perfil_ocupacional
SET perfil_ocupacional='JEFE DE CALIDAD'
WHERE area_id=@area AND UPPER(TRIM(perfil_ocupacional))='COORDINADOR DE CALIDAD'
  AND NOT EXISTS (SELECT 1 FROM (SELECT * FROM perfil_ocupacional) p2
                  WHERE p2.area_id=@area AND UPPER(TRIM(p2.perfil_ocupacional))='JEFE DE CALIDAD');

-- ============================================================
-- 🟢 ANALISTA CALIDAD (antes GESTOR CALIDAD) -> ANALISTA DE CALIDAD
-- ============================================================
-- Si ANALISTA DE CALIDAD ya existe en el area: mover y eliminar
UPDATE empleado e
JOIN perfil_ocupacional src ON src.id_perfil=e.id_perfil_ocupacional
JOIN perfil_ocupacional dst ON dst.area_id=@area AND UPPER(TRIM(dst.perfil_ocupacional))='ANALISTA DE CALIDAD'
SET e.id_perfil_ocupacional=dst.id_perfil
WHERE src.area_id=@area AND UPPER(TRIM(src.perfil_ocupacional)) IN ('ANALISTA CALIDAD','GESTOR CALIDAD');
UPDATE retirado r
JOIN perfil_ocupacional src ON src.id_perfil=r.id_perfil_ocupacional
JOIN perfil_ocupacional dst ON dst.area_id=@area AND UPPER(TRIM(dst.perfil_ocupacional))='ANALISTA DE CALIDAD'
SET r.id_perfil_ocupacional=dst.id_perfil
WHERE src.area_id=@area AND UPPER(TRIM(src.perfil_ocupacional)) IN ('ANALISTA CALIDAD','GESTOR CALIDAD');
DELETE FROM perfil_ocupacional
WHERE area_id=@area AND UPPER(TRIM(perfil_ocupacional)) IN ('ANALISTA CALIDAD','GESTOR CALIDAD')
  AND EXISTS (SELECT 1 FROM (SELECT * FROM perfil_ocupacional) p2
              WHERE p2.area_id=@area AND UPPER(TRIM(p2.perfil_ocupacional))='ANALISTA DE CALIDAD');
-- Si NO existe ANALISTA DE CALIDAD: renombrar
UPDATE perfil_ocupacional
SET perfil_ocupacional='ANALISTA DE CALIDAD'
WHERE area_id=@area AND UPPER(TRIM(perfil_ocupacional)) IN ('ANALISTA CALIDAD','GESTOR CALIDAD')
  AND NOT EXISTS (SELECT 1 FROM (SELECT * FROM perfil_ocupacional) p2
                  WHERE p2.area_id=@area AND UPPER(TRIM(p2.perfil_ocupacional))='ANALISTA DE CALIDAD');

COMMIT;

-- ============================================================
-- Verificacion: perfiles finales del area
-- ============================================================
SELECT p.perfil_ocupacional,
  (SELECT COUNT(*) FROM empleado e WHERE e.id_perfil_ocupacional=p.id_perfil) AS activos,
  (SELECT COUNT(*) FROM retirado r WHERE r.id_perfil_ocupacional=p.id_perfil) AS retirados
FROM perfil_ocupacional p
WHERE p.area_id=@area
ORDER BY p.perfil_ocupacional;
