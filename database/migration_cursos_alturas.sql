-- Módulo "Cursos de Alturas y Espacios Confinados" (SISO).
-- Control manual de licencias de trabajo en alturas por empleado.
-- La app también crea esta tabla automáticamente (_ensure_curso_altura_table),
-- este script sirve para despliegues donde se aplica el esquema por SQL.

USE gestio_humana;

CREATE TABLE IF NOT EXISTS curso_altura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cedula VARCHAR(50) NOT NULL,
    operario VARCHAR(200) NOT NULL,
    area VARCHAR(150) NULL,
    fecha_inicio DATE NULL,
    fecha_fin DATE NULL,
    nivel_curso VARCHAR(60) NULL,          -- REENTRENAMIENTO / TRABAJADOR AUTORIZADO / COORDINADOR DE ALTURAS
    novedad VARCHAR(40) NULL,              -- APTO / PENDIENTE DE EXAMEN / NO APTO
    curso VARCHAR(200) NULL,               -- entidad que realizó el curso (texto libre)
    notificado_en DATE NULL,               -- último día en que se avisó "por vencer" al jefe SISO
    creado_por VARCHAR(120) NULL,
    creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_curso_altura_cedula (id_cedula),
    INDEX idx_curso_altura_fecha_fin (fecha_fin)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Visibilidad del módulo para roles SISO (si existe la tabla rol_modulo).
INSERT IGNORE INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES
    ('SISO', 'cursos_alturas', 1),
    ('GESTOR SST', 'cursos_alturas', 1),
    ('ADMIN', 'cursos_alturas', 1);
