-- Cambiar nombre del usuario US-0010 (tecnologia@colbeef.com) a JOHAN PINTO
USE gestio_humana;

UPDATE usuario SET nombre = 'JOHAN PINTO' WHERE id_user = 'US-0010';

-- Verificar
SELECT id_user, nombre, email, rol FROM usuario WHERE id_user = 'US-0010';
