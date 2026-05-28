USE gestio_humana;

CREATE TABLE IF NOT EXISTS solicitud_incapacidad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cedula VARCHAR(50) NOT NULL,
    area VARCHAR(100) NULL,
    fecha_desde DATE NOT NULL,
    fecha_hasta DATE NOT NULL,
    dias_incapacidad INT NOT NULL DEFAULT 0,
    evidencia VARCHAR(255) NOT NULL,
    descripcion TEXT NOT NULL,
    fecha_solicitud DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    estado ENUM('PENDIENTE','APROBADO','RECHAZADO') NOT NULL DEFAULT 'PENDIENTE',
    observaciones TEXT NULL,
    resuelto_por VARCHAR(150) NULL,
    fecha_resolucion DATETIME NULL,
    solicitante_email VARCHAR(150) NULL,
    INDEX idx_incap_estado (estado),
    INDEX idx_incap_cedula (id_cedula),
    INDEX idx_incap_fecha_solicitud (fecha_solicitud)
) ENGINE=InnoDB;

-- Campos adicionales para CIE-11 y soportes especiales.
SET @sql_col := IF(
    NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'solicitud_incapacidad' AND COLUMN_NAME = 'cie11_codigo'),
    'ALTER TABLE solicitud_incapacidad ADD COLUMN cie11_codigo VARCHAR(50) NULL AFTER descripcion',
    'SELECT "cie11_codigo ya existe" AS info'
);
PREPARE stmt_col FROM @sql_col; EXECUTE stmt_col; DEALLOCATE PREPARE stmt_col;

SET @sql_col := IF(
    NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'solicitud_incapacidad' AND COLUMN_NAME = 'cie11_titulo'),
    'ALTER TABLE solicitud_incapacidad ADD COLUMN cie11_titulo VARCHAR(255) NULL AFTER cie11_codigo',
    'SELECT "cie11_titulo ya existe" AS info'
);
PREPARE stmt_col FROM @sql_col; EXECUTE stmt_col; DEALLOCATE PREPARE stmt_col;

SET @sql_col := IF(
    NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'solicitud_incapacidad' AND COLUMN_NAME = 'cie11_uri'),
    'ALTER TABLE solicitud_incapacidad ADD COLUMN cie11_uri VARCHAR(255) NULL AFTER cie11_titulo',
    'SELECT "cie11_uri ya existe" AS info'
);
PREPARE stmt_col FROM @sql_col; EXECUTE stmt_col; DEALLOCATE PREPARE stmt_col;

SET @sql_col := IF(
    NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'solicitud_incapacidad' AND COLUMN_NAME = 'origen_atencion'),
    'ALTER TABLE solicitud_incapacidad ADD COLUMN origen_atencion ENUM(''EPS'',''ARL'') NULL AFTER cie11_uri',
    'SELECT "origen_atencion ya existe" AS info'
);
PREPARE stmt_col FROM @sql_col; EXECUTE stmt_col; DEALLOCATE PREPARE stmt_col;

SET @sql_col := IF(
    NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'solicitud_incapacidad' AND COLUMN_NAME = 'requiere_historial'),
    'ALTER TABLE solicitud_incapacidad ADD COLUMN requiere_historial TINYINT(1) NOT NULL DEFAULT 0 AFTER origen_atencion',
    'SELECT "requiere_historial ya existe" AS info'
);
PREPARE stmt_col FROM @sql_col; EXECUTE stmt_col; DEALLOCATE PREPARE stmt_col;

SET @sql_col := IF(
    NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'solicitud_incapacidad' AND COLUMN_NAME = 'historial_clinico'),
    'ALTER TABLE solicitud_incapacidad ADD COLUMN historial_clinico VARCHAR(255) NULL AFTER requiere_historial',
    'SELECT "historial_clinico ya existe" AS info'
);
PREPARE stmt_col FROM @sql_col; EXECUTE stmt_col; DEALLOCATE PREPARE stmt_col;

SET @sql_col := IF(
    NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'solicitud_incapacidad' AND COLUMN_NAME = 'accidente_transito'),
    'ALTER TABLE solicitud_incapacidad ADD COLUMN accidente_transito TINYINT(1) NOT NULL DEFAULT 0 AFTER historial_clinico',
    'SELECT "accidente_transito ya existe" AS info'
);
PREPARE stmt_col FROM @sql_col; EXECUTE stmt_col; DEALLOCATE PREPARE stmt_col;

SET @sql_col := IF(
    NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'solicitud_incapacidad' AND COLUMN_NAME = 'vehiculo_propio'),
    'ALTER TABLE solicitud_incapacidad ADD COLUMN vehiculo_propio TINYINT(1) NOT NULL DEFAULT 0 AFTER accidente_transito',
    'SELECT "vehiculo_propio ya existe" AS info'
);
PREPARE stmt_col FROM @sql_col; EXECUTE stmt_col; DEALLOCATE PREPARE stmt_col;

SET @sql_col := IF(
    NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'solicitud_incapacidad' AND COLUMN_NAME = 'soat'),
    'ALTER TABLE solicitud_incapacidad ADD COLUMN soat VARCHAR(255) NULL AFTER vehiculo_propio',
    'SELECT "soat ya existe" AS info'
);
PREPARE stmt_col FROM @sql_col; EXECUTE stmt_col; DEALLOCATE PREPARE stmt_col;

SET @sql_idx := IF(
    NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.STATISTICS WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'solicitud_incapacidad' AND INDEX_NAME = 'idx_incap_cie11_codigo'),
    'ALTER TABLE solicitud_incapacidad ADD INDEX idx_incap_cie11_codigo (cie11_codigo)',
    'SELECT "idx_incap_cie11_codigo ya existe" AS info'
);
PREPARE stmt_idx FROM @sql_idx; EXECUTE stmt_idx; DEALLOCATE PREPARE stmt_idx;

-- En algunas bases legadas empleado.id_cedula usa collation/tipo distinto.
-- Para evitar Error 3780, agregamos FK solo si es compatible.
SET @can_fk := (
    SELECT CASE
        WHEN e.COLUMN_TYPE = 'varchar(50)' AND i.COLUMN_TYPE = 'varchar(50)'
             AND IFNULL(e.CHARACTER_SET_NAME, '') = IFNULL(i.CHARACTER_SET_NAME, '')
             AND IFNULL(e.COLLATION_NAME, '') = IFNULL(i.COLLATION_NAME, '')
        THEN 1 ELSE 0 END
    FROM INFORMATION_SCHEMA.COLUMNS e
    JOIN INFORMATION_SCHEMA.COLUMNS i
      ON i.TABLE_SCHEMA = e.TABLE_SCHEMA
     AND i.TABLE_NAME = 'solicitud_incapacidad'
     AND i.COLUMN_NAME = 'id_cedula'
    WHERE e.TABLE_SCHEMA = DATABASE()
      AND e.TABLE_NAME = 'empleado'
      AND e.COLUMN_NAME = 'id_cedula'
    LIMIT 1
);

SET @sql_fk := IF(
    @can_fk = 1,
    'ALTER TABLE solicitud_incapacidad ADD CONSTRAINT fk_solicitud_incapacidad_empleado FOREIGN KEY (id_cedula) REFERENCES empleado(id_cedula) ON DELETE CASCADE',
    'SELECT "FK omitida por incompatibilidad de tipo/collation entre solicitud_incapacidad.id_cedula y empleado.id_cedula" AS info'
);
PREPARE stmt_fk FROM @sql_fk;
EXECUTE stmt_fk;
DEALLOCATE PREPARE stmt_fk;
