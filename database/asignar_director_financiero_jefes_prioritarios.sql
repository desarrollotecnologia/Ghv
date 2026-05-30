USE gestio_humana;

START TRANSACTION;

-- El director administrativo financiero es la cuenta aprobadora superior
-- de los jefes administrativos priorizados.
UPDATE usuario
SET nombre = 'DIRECTOR ADMINISTRATIVO FINANCIERO',
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR'
WHERE id_user = 'US-0019'
   OR email = 'gerencia.financiera@colbeef.com';

-- Cuando estos jefes pidan permisos/vacaciones/incapacidades como empleados,
-- sus solicitudes deben ir al director administrativo financiero.
UPDATE empleado e
JOIN usuario u ON u.id_cedula = e.id_cedula
SET e.id_user_encargado = 'US-0019'
WHERE u.id_user IN ('US-0022', 'US-0004', 'US-0024', 'US-0014', 'US-0012')
  AND COALESCE(u.id_cedula, '') <> '';

COMMIT;
