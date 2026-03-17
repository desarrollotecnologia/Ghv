-- Módulo Incidencias (INATEL: incidentes, accidentes, enfermedades laborales)
-- Rol SISO (Siso@colbeef.com). Caracterización según formato CARACTERIZACION AT -2026.

USE gestio_humana;

CREATE TABLE IF NOT EXISTS incidencia_at (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_registro INT NULL COMMENT 'No. registro',
    mes VARCHAR(20) NULL,
    fecha_accidente DATE NULL,
    dia_semana VARCHAR(20) NULL,
    hora_ocurrencia VARCHAR(20) NULL,
    tipo_evento VARCHAR(80) NULL COMMENT 'Incidente, Accidente, Enfermedad laboral',
    nombre_trabajador VARCHAR(200) NULL,
    cedula VARCHAR(50) NULL,
    genero VARCHAR(20) NULL,
    cargo VARCHAR(150) NULL,
    fecha_ingreso DATE NULL,
    antiguedad_meses INT NULL,
    area_seccion_ocurrencia VARCHAR(150) NULL,
    tipo_vinculacion VARCHAR(80) NULL,
    dias_incapacidad INT NULL COMMENT 'DIAS INC.',
    prorroga VARCHAR(100) NULL,
    parte_cuerpo_afectada VARCHAR(150) NULL,
    tipo_lesion VARCHAR(100) NULL,
    forma_accidente VARCHAR(150) NULL,
    clasificacion_origen VARCHAR(150) NULL,
    agente_lesion VARCHAR(150) NULL,
    reincidente VARCHAR(20) NULL COMMENT 'Sí/No',
    descripcion_accidente TEXT NULL,
    investigado VARCHAR(20) NULL COMMENT 'Sí/No',
    causas TEXT NULL,
    seguimiento_clinico TEXT NULL,
    creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    creado_por VARCHAR(100) NULL,
    INDEX idx_fecha_accidente (fecha_accidente),
    INDEX idx_tipo_evento (tipo_evento),
    INDEX idx_cedula (cedula),
    INDEX idx_mes (mes)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
