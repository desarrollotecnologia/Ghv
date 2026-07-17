-- ============================================================
-- MIGRACION: Crear cargo JEFE DE MERCADEO y asignarlo a
--            MUÑOZ BERNAL PAOLA ANDREA (cedula 52822147)
-- Area del empleado: DPTO COMERCIAL / MERCADEO
-- ============================================================

USE gestio_humana;

START TRANSACTION;

SET @area := (
  SELECT a.id
  FROM empleado e
  JOIN area a ON UPPER(TRIM(a.nombre)) = UPPER(TRIM(e.area))
  JOIN departamento d ON d.id = a.departamento_id
                     AND UPPER(TRIM(d.nombre)) = UPPER(TRIM(e.departamento))
  WHERE e.id_cedula = '52822147'
  LIMIT 1);

-- Crear JEFE DE MERCADEO en esa area si no existe
INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area, 'JEFE DE MERCADEO', NULL
WHERE @area IS NOT NULL
  AND NOT EXISTS (
    SELECT 1 FROM (SELECT * FROM perfil_ocupacional) p
    WHERE p.area_id = @area AND UPPER(TRIM(p.perfil_ocupacional)) = 'JEFE DE MERCADEO');

-- Asignar el cargo al empleado
UPDATE empleado
SET id_perfil_ocupacional = (
  SELECT id_perfil FROM perfil_ocupacional
  WHERE area_id = @area AND UPPER(TRIM(perfil_ocupacional)) = 'JEFE DE MERCADEO' LIMIT 1)
WHERE id_cedula = '52822147' AND @area IS NOT NULL;

COMMIT;

-- Verificacion
SELECT e.id_cedula, e.apellidos_nombre, e.departamento, e.area,
       p.perfil_ocupacional AS cargo
FROM empleado e
LEFT JOIN perfil_ocupacional p ON p.id_perfil = e.id_perfil_ocupacional
WHERE e.id_cedula = '52822147';
