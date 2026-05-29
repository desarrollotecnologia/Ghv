USE gestio_humana;

SELECT id_user, nombre, email, rol, estado, acciones, id_cedula
FROM usuario
WHERE id_user IN ('US-0022', 'EMP-1098698851', 'EMP-73583061')
   OR id_cedula IN ('1098698851', '73583061')
ORDER BY id_user;

SELECT
    e.id_cedula,
    e.apellidos_nombre AS empleado,
    e.area,
    e.id_user_encargado,
    u.nombre AS jefe_nombre,
    u.email AS jefe_email,
    u.rol AS jefe_rol
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.id_cedula IN ('1098698851', '73583061')
ORDER BY e.apellidos_nombre;

SELECT
    COALESCE(u.nombre, '(SIN JEFE)') AS jefe_compras,
    COALESCE(u.email, '-') AS email_jefe,
    COUNT(*) AS empleados_activos_compras
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.estado = 'ACTIVO'
  AND e.area = 'COMPRAS'
GROUP BY u.id_user, u.nombre, u.email
ORDER BY empleados_activos_compras DESC;
