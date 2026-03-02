-- Crear tablas rol_permiso y rol_modulo si no existen, y activar el módulo Permisos.
-- Ejecutar en MySQL Workbench cuando salga: Table 'gestio_humana.rol_modulo' doesn't exist.

USE gestio_humana;

-- Asegurar que existan los roles (por si acaso)
INSERT IGNORE INTO rol (nombre) VALUES
    ('ADMIN'),
    ('BIENESTAR SOCIAL'),
    ('COORD. GH'),
    ('GESTOR DE CONTRATACION'),
    ('GESTOR DE NOMINA'),
    ('GESTOR SST');

-- Crear tabla rol_permiso si no existe
CREATE TABLE IF NOT EXISTS rol_permiso (
    rol_nombre VARCHAR(100) NOT NULL PRIMARY KEY,
    nivel ENUM('READ','WRITE','ALL') NOT NULL DEFAULT 'READ',
    FOREIGN KEY (rol_nombre) REFERENCES rol(nombre) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Crear tabla rol_modulo si no existe
CREATE TABLE IF NOT EXISTS rol_modulo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rol_nombre VARCHAR(100) NOT NULL,
    modulo_key VARCHAR(50) NOT NULL,
    visible TINYINT(1) NOT NULL DEFAULT 1,
    UNIQUE KEY uk_rol_modulo (rol_nombre, modulo_key),
    FOREIGN KEY (rol_nombre) REFERENCES rol(nombre) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Niveles de permiso por rol
INSERT IGNORE INTO rol_permiso (rol_nombre, nivel) VALUES
    ('ADMIN', 'ALL'),
    ('COORD. GH', 'ALL'),
    ('GESTOR DE CONTRATACION', 'WRITE'),
    ('BIENESTAR SOCIAL', 'WRITE'),
    ('GESTOR DE NOMINA', 'WRITE'),
    ('GESTOR SST', 'READ');

-- Módulos visibles por rol (incluye permisos para todos)
INSERT IGNORE INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES
    ('ADMIN', 'organizacion', 1), ('ADMIN', 'personal', 1), ('ADMIN', 'retiro', 1), ('ADMIN', 'familia', 1), ('ADMIN', 'eventos', 1), ('ADMIN', 'eps', 1), ('ADMIN', 'fondos', 1), ('ADMIN', 'reportes', 1), ('ADMIN', 'admin', 1), ('ADMIN', 'permisos', 1),
    ('COORD. GH', 'organizacion', 1), ('COORD. GH', 'personal', 1), ('COORD. GH', 'retiro', 1), ('COORD. GH', 'familia', 1), ('COORD. GH', 'eventos', 1), ('COORD. GH', 'eps', 1), ('COORD. GH', 'fondos', 1), ('COORD. GH', 'reportes', 1), ('COORD. GH', 'admin', 1), ('COORD. GH', 'permisos', 1),
    ('GESTOR DE CONTRATACION', 'organizacion', 0), ('GESTOR DE CONTRATACION', 'personal', 1), ('GESTOR DE CONTRATACION', 'retiro', 1), ('GESTOR DE CONTRATACION', 'familia', 1), ('GESTOR DE CONTRATACION', 'eventos', 1), ('GESTOR DE CONTRATACION', 'eps', 1), ('GESTOR DE CONTRATACION', 'fondos', 1), ('GESTOR DE CONTRATACION', 'reportes', 1), ('GESTOR DE CONTRATACION', 'admin', 0), ('GESTOR DE CONTRATACION', 'permisos', 1),
    ('BIENESTAR SOCIAL', 'organizacion', 0), ('BIENESTAR SOCIAL', 'personal', 1), ('BIENESTAR SOCIAL', 'retiro', 0), ('BIENESTAR SOCIAL', 'familia', 1), ('BIENESTAR SOCIAL', 'eventos', 1), ('BIENESTAR SOCIAL', 'eps', 0), ('BIENESTAR SOCIAL', 'fondos', 0), ('BIENESTAR SOCIAL', 'reportes', 1), ('BIENESTAR SOCIAL', 'dashboard', 0), ('BIENESTAR SOCIAL', 'admin', 0), ('BIENESTAR SOCIAL', 'permisos', 1),
    ('GESTOR DE NOMINA', 'organizacion', 0), ('GESTOR DE NOMINA', 'personal', 1), ('GESTOR DE NOMINA', 'retiro', 1), ('GESTOR DE NOMINA', 'familia', 0), ('GESTOR DE NOMINA', 'eventos', 0), ('GESTOR DE NOMINA', 'eps', 1), ('GESTOR DE NOMINA', 'fondos', 1), ('GESTOR DE NOMINA', 'reportes', 1), ('GESTOR DE NOMINA', 'total_hijos', 0), ('GESTOR DE NOMINA', 'admin', 0), ('GESTOR DE NOMINA', 'permisos', 1),
    ('GESTOR SST', 'organizacion', 0), ('GESTOR SST', 'personal', 1), ('GESTOR SST', 'retiro', 0), ('GESTOR SST', 'familia', 0), ('GESTOR SST', 'eventos', 0), ('GESTOR SST', 'eps', 0), ('GESTOR SST', 'fondos', 0), ('GESTOR SST', 'reportes', 1), ('GESTOR SST', 'total_hijos', 0), ('GESTOR SST', 'admin', 0), ('GESTOR SST', 'permisos', 1);
