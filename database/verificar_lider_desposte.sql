USE gestio_humana;

SELECT id_user, nombre, email, rol, estado, acciones, id_cedula
FROM usuario
WHERE id_user = 'US-0027'
   OR email IN ('coordinacion.desposte@colbeef.com', 'desposte@colbeef.com');
