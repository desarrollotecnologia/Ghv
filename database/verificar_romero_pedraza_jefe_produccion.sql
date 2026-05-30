USE gestio_humana;

SELECT id_user, nombre, email, rol, estado, acciones, id_cedula
FROM usuario
WHERE id_user IN ('US-0025', 'EMP-1098738467', 'US-0011', 'US-0026', 'US-0001', 'US-0027', 'US-0020')
   OR id_cedula = '1098738467'
ORDER BY FIELD(id_user, 'US-0025', 'EMP-1098738467', 'US-0011', 'US-0026', 'US-0001', 'US-0027', 'US-0020'), id_user;

SELECT
    jefe.id_user AS cuenta,
    jefe.nombre AS nombre_cuenta,
    jefe.email,
    e.id_cedula,
    e.apellidos_nombre AS empleado_vinculado,
    e.area,
    e.id_user_encargado,
    superior.nombre AS jefe_inmediato,
    superior.email AS email_jefe_inmediato
FROM usuario jefe
LEFT JOIN empleado e ON e.id_cedula = jefe.id_cedula
LEFT JOIN usuario superior ON superior.id_user = e.id_user_encargado
WHERE jefe.id_user IN ('US-0025', 'US-0011', 'US-0026', 'US-0001', 'US-0027')
ORDER BY FIELD(jefe.id_user, 'US-0025', 'US-0011', 'US-0026', 'US-0001', 'US-0027'), jefe.id_user;

SELECT
    COALESCE(u.nombre, '(SIN JEFE)') AS jefe_linea,
    COALESCE(u.email, '-') AS email_jefe,
    COUNT(*) AS empleados_activos_linea
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.estado = 'ACTIVO'
  AND e.area = 'LINEA DE SACRIFICIO'
GROUP BY u.id_user, u.nombre, u.email
ORDER BY empleados_activos_linea DESC;
