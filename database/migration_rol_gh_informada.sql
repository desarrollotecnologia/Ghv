-- Rol GH INFORMADA: misma vista de módulos que COORD. GH (incl. Permisos) pero solo lectura.
-- No aprueba ni rechaza permisos; solo recibe notificaciones y puede consultar el listado.
-- Asignar este rol al usuario con email gestionhumana@colbeef.com (MAIL_GH_INFORMADA).

USE gestio_humana;

-- Crear rol
INSERT IGNORE INTO rol (nombre) VALUES ('GH INFORMADA');

-- Nivel READ (solo consulta)
INSERT IGNORE INTO rol_permiso (rol_nombre, nivel) VALUES ('GH INFORMADA', 'READ');

-- Mismos módulos visibles que COORD. GH (sin admin; con permisos en solo lectura)
INSERT IGNORE INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES
    ('GH INFORMADA', 'organizacion', 1),
    ('GH INFORMADA', 'personal', 1),
    ('GH INFORMADA', 'retiro', 1),
    ('GH INFORMADA', 'familia', 1),
    ('GH INFORMADA', 'eventos', 1),
    ('GH INFORMADA', 'eps', 1),
    ('GH INFORMADA', 'fondos', 1),
    ('GH INFORMADA', 'reportes', 1),
    ('GH INFORMADA', 'permisos', 1);

-- Para asignar el rol al usuario gestionhumana@colbeef.com (ajusta si el usuario ya existe con otro nombre):
-- UPDATE usuario SET rol = 'GH INFORMADA' WHERE correo = 'gestionhumana@colbeef.com';
