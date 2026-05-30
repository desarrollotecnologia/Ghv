USE gestio_humana;

SELECT id_user, nombre, email, rol, estado, acciones, id_cedula
FROM usuario
WHERE id_user IN ('US-0019', 'US-0022', 'US-0004', 'US-0024', 'US-0014', 'US-0012')
ORDER BY FIELD(id_user, 'US-0019', 'US-0022', 'US-0004', 'US-0024', 'US-0014', 'US-0012'), id_user;

SELECT
    jefe.id_user AS cuenta_jefe,
    jefe.nombre AS nombre_cuenta_jefe,
    jefe.email AS email_jefe,
    e.id_cedula,
    e.apellidos_nombre AS empleado_vinculado,
    e.id_user_encargado,
    director.nombre AS jefe_inmediato,
    director.email AS email_jefe_inmediato
FROM usuario jefe
LEFT JOIN empleado e ON e.id_cedula = jefe.id_cedula
LEFT JOIN usuario director ON director.id_user = e.id_user_encargado
WHERE jefe.id_user IN ('US-0022', 'US-0004', 'US-0024', 'US-0014', 'US-0012')
ORDER BY FIELD(jefe.id_user, 'US-0022', 'US-0004', 'US-0024', 'US-0014', 'US-0012'), jefe.id_user;
