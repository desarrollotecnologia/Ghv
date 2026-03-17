-- Rol SISO para el módulo Incidencias (Siso@colbeef.com).
-- Ejecutar después de migration_incidencias_at.sql y migration_rol_bd.sql (si existen).

USE gestio_humana;

-- Si existe tabla rol, añadir SISO
INSERT IGNORE INTO rol (nombre) VALUES ('SISO');

-- Si existe rol_permiso, dar WRITE a SISO
INSERT IGNORE INTO rol_permiso (rol_nombre, nivel) VALUES ('SISO', 'WRITE');

-- Módulos visibles solo para SISO: incidencias
INSERT IGNORE INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES
    ('SISO', 'incidencias', 1),
    ('SISO', 'incidencias_dashboard', 1);
