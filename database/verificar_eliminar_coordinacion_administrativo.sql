USE gestio_humana;

SELECT id_user, nombre, email, rol, estado, id_cedula
FROM usuario
WHERE id_user = 'US-0023'
   OR email = 'coordinacion.administrativo@colbeef.com';

SELECT e.id_cedula, e.nombre, e.area, e.id_user_encargado, u.nombre AS jefe
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.area IN ('ADMINISTRACION', 'JARDINERIA')
   OR e.id_user_encargado = 'US-0023';
