USE gestio_humana;

SET @db := DATABASE();

SET @sql := IF(
    NOT EXISTS (
        SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = @db AND TABLE_NAME = 'solicitud_incapacidad' AND COLUMN_NAME = 'furips'
    ),
    'ALTER TABLE solicitud_incapacidad ADD COLUMN furips VARCHAR(255) NULL AFTER soat',
    'SELECT "furips ya existe" AS info'
);
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

SET @sql := IF(
    EXISTS (
        SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = @db AND TABLE_NAME = 'solicitud_incapacidad'
          AND COLUMN_NAME = 'origen_atencion'
          AND COLUMN_TYPE NOT LIKE '%ACCIDENTE_TRANSITO%'
    ),
    'ALTER TABLE solicitud_incapacidad MODIFY COLUMN origen_atencion ENUM(''EPS'',''ARL'',''ACCIDENTE_TRANSITO'') NULL',
    'SELECT "origen_atencion ya incluye ACCIDENTE_TRANSITO" AS info'
);
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;
