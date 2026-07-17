-- ============================================================
-- MIGRACION: Deduplicar catálogo de profesiones
-- Objetivos:
-- 1) Unificar sinónimos femeninos -> forma canónica masculina
-- 2) Eliminar profesiones repetidas en catálogo
-- 3) Reasignar empleados al id canónico sin perder información
-- 4) Prevenir nuevos duplicados por nombre
-- ============================================================

USE gestio_humana;

START TRANSACTION;

-- 1) Normalización básica del catálogo
UPDATE profesion
SET profesion = UPPER(TRIM(profesion))
WHERE profesion IS NOT NULL;

UPDATE profesion SET profesion = REPLACE(profesion, '  ', ' ');
UPDATE profesion SET profesion = REPLACE(profesion, '  ', ' ');
UPDATE profesion SET profesion = REPLACE(profesion, '  ', ' ');

-- 2) Unificación de sinónimos frecuentes (femenino -> masculino)
UPDATE profesion SET profesion = REPLACE(profesion, 'TECNOLOGA', 'TECNOLOGO');
UPDATE profesion SET profesion = REPLACE(profesion, 'TECNICA', 'TECNICO');
UPDATE profesion SET profesion = REPLACE(profesion, 'CONTADORA', 'CONTADOR');
UPDATE profesion SET profesion = REPLACE(profesion, 'ABOGADA', 'ABOGADO');
UPDATE profesion SET profesion = REPLACE(profesion, 'INGENIERA', 'INGENIERO');

UPDATE profesion SET profesion = REPLACE(profesion, '  ', ' ');
UPDATE profesion SET profesion = TRIM(profesion);

-- 3) Preparar IDs canónicos por nombre (queda 1 por profesión)
DROP TEMPORARY TABLE IF EXISTS tmp_profesion_keep;
CREATE TEMPORARY TABLE tmp_profesion_keep AS
SELECT
    profesion,
    MIN(id_profesion) AS keep_id
FROM profesion
GROUP BY profesion;

ALTER TABLE tmp_profesion_keep
ADD PRIMARY KEY (profesion);

-- 4) Reasignar empleados con profesión guardada como ID
UPDATE empleado e
JOIN profesion p ON p.id_profesion = e.profesion
JOIN tmp_profesion_keep k ON k.profesion = p.profesion
SET e.profesion = k.keep_id
WHERE e.profesion IS NOT NULL
  AND e.profesion <> ''
  AND e.profesion <> k.keep_id;

-- 5) Reasignar empleados con profesión guardada como texto
UPDATE empleado e
JOIN tmp_profesion_keep k ON UPPER(TRIM(e.profesion)) = k.profesion
SET e.profesion = k.keep_id
WHERE e.profesion IS NOT NULL
  AND e.profesion <> ''
  AND e.profesion <> k.keep_id;

-- 6) Eliminar filas duplicadas del catálogo
DELETE p
FROM profesion p
LEFT JOIN tmp_profesion_keep k ON k.keep_id = p.id_profesion
WHERE k.keep_id IS NULL;

-- 7) Índice único para evitar volver a duplicar por nombre
SET @uk_prof_exists := (
    SELECT COUNT(*)
    FROM information_schema.STATISTICS
    WHERE TABLE_SCHEMA = DATABASE()
      AND TABLE_NAME = 'profesion'
      AND INDEX_NAME = 'uk_profesion_nombre'
);

SET @sql := IF(
    @uk_prof_exists = 0,
    'ALTER TABLE profesion ADD UNIQUE KEY uk_profesion_nombre (profesion)',
    'SELECT ''uk_profesion_nombre ya existe'' AS info'
);
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

COMMIT;

-- Verificación rápida
SELECT profesion, COUNT(*) AS repetidos
FROM profesion
GROUP BY profesion
HAVING COUNT(*) > 1;

SELECT COUNT(*) AS empleados_sin_profesion
FROM empleado
WHERE COALESCE(TRIM(profesion), '') = '';
