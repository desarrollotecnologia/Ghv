-- ============================================================
-- MIGRACION: Garantizar rol ADMIN total y reset de contrasena
-- para:
--   US-0003 MAGALI (gestor.contratacion@colbeef.com)
--   US-0004 CINDY  (coordinacion.gestionhumana@colbeef.com)
--
-- Despues de ejecutar esto, podran iniciar sesion con:
--   Correo: su email corporativo
--   Clave : Colbeef2026*
-- y el sistema les pedira cambiar la clave al ingresar.
--
-- Rol ADMIN = mismo nivel que GERENCIA / TECNOLOGIA: ven y hacen todo.
-- Fecha: 2026-04-18
-- ============================================================
USE gestio_humana;

START TRANSACTION;

-- ---------- 0. Asegurar que el rol ADMIN existe y tiene permisos totales ----------
INSERT IGNORE INTO rol (nombre) VALUES ('ADMIN');
INSERT IGNORE INTO rol_permiso (rol_nombre, nivel) VALUES ('ADMIN', 'ALL');
INSERT IGNORE INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES
    ('ADMIN', 'organizacion', 1),
    ('ADMIN', 'personal',     1),
    ('ADMIN', 'retiro',       1),
    ('ADMIN', 'familia',      1),
    ('ADMIN', 'eventos',      1),
    ('ADMIN', 'eps',          1),
    ('ADMIN', 'fondos',       1),
    ('ADMIN', 'reportes',     1),
    ('ADMIN', 'admin',        1),
    ('ADMIN', 'permisos',     1);
UPDATE rol_modulo SET visible = 1 WHERE rol_nombre = 'ADMIN';

-- ---------- 1. Subir a ADMIN y asegurar estado activo ----------
-- Hash corresponde a la contrasena "Colbeef2026*" (werkzeug.security scrypt).
UPDATE usuario
SET rol            = 'ADMIN',
    acciones       = 'TODOS LOS CAMBIOS',
    estado         = 1,
    password_hash  = 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89',
    debe_cambiar_clave = 1
WHERE id_user IN ('US-0003', 'US-0004');

-- ---------- 2. Verificacion ----------
SELECT id_user, nombre, email, rol, estado, acciones
FROM usuario
WHERE id_user IN ('US-0003', 'US-0004');

-- Mostrar permisos y modulos asignados al rol ADMIN (es el mas alto, ve todo)
SELECT r.nombre AS rol, rp.nivel
FROM rol r
LEFT JOIN rol_permiso rp ON rp.rol_nombre = r.nombre
WHERE r.nombre = 'ADMIN';

SELECT rol_nombre, modulo_key, visible
FROM rol_modulo
WHERE rol_nombre = 'ADMIN'
ORDER BY modulo_key;

COMMIT;

-- ============================================================
-- Credenciales tras ejecutar este script:
--   gestor.contratacion@colbeef.com      ->  Colbeef2026*
--   coordinacion.gestionhumana@colbeef.com ->  Colbeef2026*
-- Pedira cambiar la clave al primer login.
-- ============================================================
