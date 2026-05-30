USE gestio_humana;

SELECT
    u.id_user,
    u.nombre,
    u.email,
    u.rol,
    u.estado,
    u.acciones,
    u.id_cedula,
    e.apellidos_nombre AS empleado_vinculado,
    e.area,
    e.estado AS estado_empleado
FROM usuario u
LEFT JOIN empleado e ON e.id_cedula = u.id_cedula
WHERE u.id_user = 'US-0028'
   OR u.email = 'coordinacion.calidad@colbeef.com';
