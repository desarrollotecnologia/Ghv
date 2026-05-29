USE gestio_humana;

SELECT
    e.id_cedula,
    e.apellidos_nombre AS empleado,
    e.area,
    e.id_user_encargado,
    u.nombre AS jefe_nombre,
    u.email AS jefe_email,
    u.rol AS jefe_rol,
    u.id_cedula AS jefe_id_cedula
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.id_cedula = '1098752811';

SELECT id_user, nombre, email, rol, estado, acciones, id_cedula
FROM usuario
WHERE id_user IN ('US-0017', 'EMP-1098752811')
   OR id_cedula = '1098752811'
ORDER BY id_user;
