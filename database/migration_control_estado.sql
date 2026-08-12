-- Módulo "Control de estado" – seguimiento de casos médico-laborales (SISO).
-- La app también crea esta tabla automáticamente (_ensure_control_estado_table).

USE gestio_humana;

CREATE TABLE IF NOT EXISTS control_estado (
    id_cedula VARCHAR(50) PRIMARY KEY,
    estado VARCHAR(20) NULL,                 -- ACTIVO / CERRADA / INCAPACITADO
    fecha_estado DATE NULL,                  -- fecha a tener en cuenta (p.ej. incapacidad)
    fecha_inicio_rec DATE NULL,
    dx VARCHAR(500) NULL,
    cie10_codigo VARCHAR(20) NULL,
    clasificacion VARCHAR(300) NULL,
    agrupados VARCHAR(300) NULL,
    contingencia VARCHAR(20) NULL,           -- EG / EL / AT / AT/EL
    estado_recomendacion VARCHAR(20) NULL,   -- ABIERTAS / CERRADAS (lo cambia SISO)
    fecha_cierre DATE NULL,
    motivo_cierre VARCHAR(500) NULL,
    temporalidad VARCHAR(200) NULL,
    descripcion_rec TEXT NULL,
    seguimiento_productivo TEXT NULL,
    area_reubicado VARCHAR(150) NULL,
    pcl VARCHAR(50) NULL,
    porcentaje VARCHAR(50) NULL,             -- % (PCL)
    complejidad VARCHAR(10) NULL,            -- BAJA / MEDIA / ALTA
    sindicalizado VARCHAR(3) NULL,           -- SI / NO
    cierre_probable VARCHAR(3) NULL,         -- SI / NO
    mesa_laboral TEXT NULL,
    actualizado_por VARCHAR(120) NULL,
    actualizado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT IGNORE INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES
    ('SISO', 'control_estado', 1),
    ('GESTOR SST', 'control_estado', 1),
    ('ADMIN', 'control_estado', 1);
