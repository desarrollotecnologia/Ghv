-- Módulo "Inventario de extintores / equipos de emergencia" (SISO).
-- La app también crea esta tabla automáticamente (_ensure_extintor_table).

USE gestio_humana;

CREATE TABLE IF NOT EXISTS extintor_inventario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    clase VARCHAR(40) NULL,               -- MULTIPROPOSITO / AGUA A PRESION / SOLKAFLAM / CO2
    capacidad VARCHAR(60) NULL,
    fecha_vencimiento DATE NULL,
    centro_costo VARCHAR(120) NULL,       -- se toma de las áreas de Gestión Humana
    area_ubicacion VARCHAR(200) NULL,     -- texto libre
    observaciones VARCHAR(400) NULL,      -- texto libre
    notificado_en DATE NULL,
    creado_por VARCHAR(120) NULL,
    creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_extintor_fecha (fecha_vencimiento)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT IGNORE INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES
    ('SISO', 'extintores', 1),
    ('GESTOR SST', 'extintores', 1),
    ('ADMIN', 'extintores', 1);
