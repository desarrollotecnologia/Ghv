-- ============================================================
-- MIGRACION: Foto del empleado
-- Fecha: 2026-04-18
--
-- Agrega columna `foto` a la tabla empleado para almacenar la
-- ruta relativa del archivo dentro de /static, por ejemplo:
--   empleados/1005123456.jpg
--
-- La foto la sube el formulario al crear/editar empleado.
-- Si la columna ya existe, no hace nada.
-- ============================================================
USE gestio_humana;

START TRANSACTION;

SET @col_existe := (
    SELECT COUNT(*) FROM information_schema.COLUMNS
    WHERE TABLE_SCHEMA = DATABASE()
      AND TABLE_NAME   = 'empleado'
      AND COLUMN_NAME  = 'foto'
);
SET @sql := IF(@col_existe = 0,
    'ALTER TABLE empleado ADD COLUMN foto VARCHAR(255) NULL COMMENT "Ruta relativa dentro de static, ej: empleados/1005123456.jpg"',
    'SELECT "Columna foto ya existe" AS info');
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

-- Verificacion
SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()
  AND TABLE_NAME   = 'empleado'
  AND COLUMN_NAME  = 'foto';

COMMIT;
