-- Módulo "EMO" (Exámenes Médicos Ocupacionales) – control por empleado activo (SISO).
-- La app también crea esta tabla automáticamente (_ensure_emo_table).

USE gestio_humana;

CREATE TABLE IF NOT EXISTS emo_control (
    id_cedula VARCHAR(50) PRIMARY KEY,
    fecha_ultimo_control DATE NULL,
    conforme TINYINT(1) NOT NULL DEFAULT 0,     -- OK: recibido y firmado, todo conforme
    observaciones VARCHAR(400) NULL,
    actualizado_por VARCHAR(120) NULL,
    actualizado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT IGNORE INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES
    ('SISO', 'emo', 1),
    ('GESTOR SST', 'emo', 1),
    ('ADMIN', 'emo', 1);
