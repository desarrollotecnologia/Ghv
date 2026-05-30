USE gestio_humana;

SELECT id_user, nombre, email, rol, estado, acciones, id_cedula
FROM usuario
WHERE id_user = 'US-0011'
   OR email = 'coordinacion.corrales@colbeef.com';
