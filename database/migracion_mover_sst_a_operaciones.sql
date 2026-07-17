-- ============================================================
-- MIGRACION: Mover área SST a DPTO DE OPERACIONES
-- ============================================================

USE gestio_humana;

START TRANSACTION;

-- Asegurar departamento destino
INSERT INTO departamento (nombre)
SELECT 'DPTO DE OPERACIONES'
WHERE NOT EXISTS (
    SELECT 1 FROM departamento WHERE UPPER(TRIM(nombre)) = 'DPTO DE OPERACIONES'
);

SET @dep_ops := (
    SELECT id FROM departamento WHERE UPPER(TRIM(nombre)) = 'DPTO DE OPERACIONES' LIMIT 1
);

-- Mover el catálogo de área SST al departamento de operaciones
UPDATE area
SET departamento_id = @dep_ops
WHERE @dep_ops IS NOT NULL
  AND UPPER(TRIM(nombre)) = 'SST';

-- Normalizar datos maestros con área SST
UPDATE empleado
SET departamento = 'DPTO DE OPERACIONES'
WHERE UPPER(TRIM(area)) = 'SST';

UPDATE retirado
SET departamento = 'DPTO DE OPERACIONES'
WHERE UPPER(TRIM(area)) = 'SST';

COMMIT;

-- Verificación
SELECT d.nombre AS departamento, a.nombre AS area
FROM area a
JOIN departamento d ON d.id = a.departamento_id
WHERE UPPER(TRIM(a.nombre)) = 'SST';
