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
WHERE u.id_user IN ('US-0001', 'EMP-1095807041')
   OR u.email = 'coordinacion.logistico@colbeef.com'
   OR u.id_cedula = '1095807041'
ORDER BY u.id_user;

SELECT
    e.id_cedula,
    e.apellidos_nombre AS empleado,
    e.area,
    e.id_user_encargado,
    u.nombre AS jefe_nombre,
    u.email AS jefe_email
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.id_cedula = '1095807041';

SELECT
    COALESCE(u.nombre, '(SIN JEFE)') AS jefe_logistica,
    COALESCE(u.email, '-') AS email_jefe,
    COUNT(*) AS empleados_activos_logistica
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('LOGISTICA', 'LOGISTICA DESPOSTE')
GROUP BY u.id_user, u.nombre, u.email
ORDER BY empleados_activos_logistica DESC;
