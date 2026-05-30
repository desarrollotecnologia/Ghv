USE gestio_humana;

SELECT id_user, nombre, email, rol, estado, acciones, id_cedula
FROM usuario
WHERE id_user IN ('US-0013', 'EMP-1098665901')
   OR email = 'direccion.proyectos@colbeef.com'
   OR id_cedula = '1098665901'
ORDER BY id_user;

SELECT
    e.id_cedula,
    e.apellidos_nombre AS empleado,
    e.departamento,
    e.area,
    e.id_user_encargado,
    u.nombre AS jefe_nombre,
    u.email AS jefe_email,
    u.rol AS jefe_rol
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.id_cedula = '1098665901';
