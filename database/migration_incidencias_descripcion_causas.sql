-- Agrega columna descripcion_causas a incidencia_at.
-- Tambien actualiza comentario de tipo_evento y causas a los nuevos valores.
-- Compatible con MySQL 5.7+ (sin IF NOT EXISTS para ADD COLUMN).

USE gestio_humana;

SET @col_exists := (
    SELECT COUNT(*) FROM information_schema.COLUMNS
    WHERE TABLE_SCHEMA = DATABASE()
      AND TABLE_NAME = 'incidencia_at'
      AND COLUMN_NAME = 'descripcion_causas'
);

SET @stmt := IF(
    @col_exists = 0,
    'ALTER TABLE incidencia_at ADD COLUMN descripcion_causas TEXT NULL AFTER causas',
    'SELECT "Columna descripcion_causas ya existe" AS msg'
);

PREPARE s FROM @stmt;
EXECUTE s;
DEALLOCATE PREPARE s;

ALTER TABLE incidencia_at
    MODIFY COLUMN tipo_evento VARCHAR(80) NULL COMMENT 'Leve, Severo, Grave, Mortal',
    MODIFY COLUMN causas TEXT NULL COMMENT 'Acto inseguro, Condicion insegura, Factor personal, Factor trabajo (separadas por coma)';
