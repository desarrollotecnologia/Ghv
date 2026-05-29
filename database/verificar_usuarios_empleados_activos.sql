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
