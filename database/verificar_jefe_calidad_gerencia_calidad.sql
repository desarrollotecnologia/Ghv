USE gestio_humana;

SELECT id_user, nombre, email, rol, estado, acciones, id_cedula
FROM usuario
WHERE id_user IN ('US-0028', 'US-0020')
   OR email IN ('coordinacion.calidad@colbeef.com', 'gerencia.calidad@colbeef.com')
ORDER BY FIELD(id_user, 'US-0028', 'US-0020'), id_user;

SELECT
    jefe.id_user AS cuenta_jefe,
    jefe.nombre AS nombre_cuenta_jefe,
    jefe.email AS email_jefe,
    e.id_cedula,
    e.apellidos_nombre AS empleado_vinculado,
    e.id_user_encargado,
    gerente.nombre AS jefe_inmediato,
    gerente.email AS email_jefe_inmediato
FROM usuario jefe
LEFT JOIN empleado e ON e.id_cedula = jefe.id_cedula
LEFT JOIN usuario gerente ON gerente.id_user = e.id_user_encargado
WHERE jefe.id_user = 'US-0028'
   OR jefe.email = 'coordinacion.calidad@colbeef.com';
