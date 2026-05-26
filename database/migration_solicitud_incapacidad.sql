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
