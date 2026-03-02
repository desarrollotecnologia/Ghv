-- Solicitudes de permiso o licencia (formato autorización)
-- La coordinadora GH aprueba/rechaza; se notifica por correo.

USE gestio_humana;

CREATE TABLE IF NOT EXISTS solicitud_permiso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cedula VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL DEFAULT 'Permiso',
    fecha_desde DATE NOT NULL,
    fecha_hasta DATE NOT NULL,
    motivo TEXT,
    fecha_solicitud DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    estado ENUM('PENDIENTE','APROBADO','RECHAZADO') NOT NULL DEFAULT 'PENDIENTE',
    observaciones TEXT NULL,
    resuelto_por VARCHAR(20) NULL,
    fecha_resolucion DATETIME NULL,
    solicitante_email VARCHAR(150) NULL,
    INDEX idx_estado (estado),
    INDEX idx_id_cedula (id_cedula),
    INDEX idx_fecha_solicitud (fecha_solicitud),
    FOREIGN KEY (id_cedula) REFERENCES empleado(id_cedula) ON DELETE CASCADE
) ENGINE=InnoDB;
