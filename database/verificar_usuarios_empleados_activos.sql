USE gestio_humana;

-- Debe dar 0.
SELECT COUNT(*) AS activos_sin_usuario_emp
FROM empleado e
LEFT JOIN usuario u ON u.id_user = CONCAT('EMP-', e.id_cedula) AND u.estado = 1
WHERE e.estado = 'ACTIVO'
  AND u.id_user IS NULL;

-- Resumen de cuentas EMP activas.
SELECT
    COUNT(*) AS cuentas_emp_activas
FROM usuario
WHERE id_user LIKE 'EMP-%'
  AND estado = 1;

-- Cuentas EMP que todavia tienen correo local aunque el empleado tiene correo personal.
-- Normalmente debe dar 0. Si muestra filas, ese correo personal está repetido en otra cuenta
-- o requiere corrección manual.
SELECT
    e.id_cedula,
    e.apellidos_nombre,
    e.direccion_email AS correo_personal,
    u.email AS correo_usuario_emp
FROM empleado e
JOIN usuario u ON u.id_user = CONCAT('EMP-', e.id_cedula)
WHERE e.estado = 'ACTIVO'
  AND TRIM(COALESCE(e.direccion_email, '')) <> ''
  AND LOWER(u.email) <> LOWER(TRIM(e.direccion_email));
