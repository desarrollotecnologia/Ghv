-- Activar el módulo "Permisos" en el menú para todos los roles.
-- Ejecutar en MySQL si no ves "Solicitud de permiso" en el menú lateral.
-- Si da error "Table rol_modulo doesn't exist", ejecuta antes: crear_rol_modulo_y_permisos.sql

USE gestio_humana;

INSERT IGNORE INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES
    ('ADMIN', 'permisos', 1),
    ('COORD. GH', 'permisos', 1),
    ('GESTOR DE CONTRATACION', 'permisos', 1),
    ('BIENESTAR SOCIAL', 'permisos', 1),
    ('GESTOR DE NOMINA', 'permisos', 1),
    ('GESTOR SST', 'permisos', 1);
