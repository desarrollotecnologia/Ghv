-- Corregir rol de usuarios: debe ser exactamente 'ADMIN' (sin ",10" ni otro texto).
-- Si el rol está mal, el menú Permisos no aparece.
-- Ejecuta cada bloque por separado si Workbench da error de "safe update mode".

USE gestio_humana;

-- 1) Ver cómo está guardado el rol
SELECT id_user, nombre, email, rol FROM usuario WHERE id_user = 'US-0010';

-- 2) Corregir por clave primaria (funciona con safe mode)
UPDATE usuario SET rol = 'ADMIN' WHERE id_user = 'US-0010';

-- 3) Comprobar
SELECT id_user, nombre, email, rol FROM usuario WHERE id_user = 'US-0010';
