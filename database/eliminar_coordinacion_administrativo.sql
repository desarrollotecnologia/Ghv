USE gestio_humana;

START TRANSACTION;

-- Elimina/desactiva US-0023 (coordinacion.administrativo@colbeef.com).
-- Empleados de ADMINISTRACION y JARDINERIA pasan a Director Administrativo Financiero.

UPDATE empleado
SET id_user_encargado = (
    SELECT id_user FROM usuario WHERE email = 'gerencia.financiera@colbeef.com' LIMIT 1
)
WHERE id_user_encargado = 'US-0023';

UPDATE empleado
SET id_user_encargado = (
    SELECT id_user FROM usuario WHERE email = 'gerencia.financiera@colbeef.com' LIMIT 1
)
WHERE estado = 'ACTIVO'
  AND area IN ('ADMINISTRACION', 'JARDINERIA');

UPDATE usuario
SET estado = 0,
    id_cedula = NULL
WHERE id_user = 'US-0023'
   OR email = 'coordinacion.administrativo@colbeef.com';

COMMIT;
