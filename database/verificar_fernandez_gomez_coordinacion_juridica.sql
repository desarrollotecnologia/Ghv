USE gestio_humana;

SET @cedula := '1098752811';
SET @coord_user := 'US-0017';
SET @emp_user := CONCAT('EMP-', @cedula);

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
WHERE e.id_cedula = @cedula;

SELECT id_user, nombre, email, rol, estado, acciones, id_cedula
FROM usuario
WHERE id_user IN (@coord_user, @emp_user)
   OR id_cedula = @cedula
ORDER BY id_user;
