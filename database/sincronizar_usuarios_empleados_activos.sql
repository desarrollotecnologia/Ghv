USE gestio_humana;

START TRANSACTION;

-- Crea o corrige cuentas de portal para TODO empleado ACTIVO.
-- Regla:
--   usuario.id_user = EMP-<cedula>
--   usuario.email = empleado.direccion_email si existe y no esta tomado por otra cuenta
--   usuario.rol = EMPLEADO
--   usuario.estado = 1
--   usuario.id_cedula = empleado.id_cedula
--   usuario.acciones = VISTA
--
-- Este script NO toca empleados, fechas, permisos ni jefes inmediatos.
-- Solo toca la tabla usuario para cuentas EMP-*.

SET @HASH_ESTANDAR = 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';

-- 1) Crear cuentas faltantes. Usa correo personal de Personal Activo si no esta tomado.
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
SELECT
    CONCAT('EMP-', e.id_cedula) AS id_user,
    CASE
        WHEN TRIM(COALESCE(e.direccion_email, '')) <> ''
         AND NOT EXISTS (
             SELECT 1
             FROM usuario ux
             WHERE LOWER(ux.email) = LOWER(TRIM(e.direccion_email))
         )
        THEN LOWER(TRIM(e.direccion_email))
        ELSE CONCAT(e.id_cedula, '@empleado.colbeef.local')
    END AS email,
    @HASH_ESTANDAR AS password_hash,
    e.apellidos_nombre AS nombre,
    'EMPLEADO' AS rol,
    1 AS estado,
    'VISTA' AS acciones,
    e.id_cedula,
    1 AS debe_cambiar_clave
FROM empleado e
LEFT JOIN usuario u ON u.id_user = CONCAT('EMP-', e.id_cedula)
WHERE e.estado = 'ACTIVO'
  AND u.id_user IS NULL;

-- 2) Activar y corregir rol/vinculo de todas las cuentas EMP existentes para empleados activos.
-- Safe Updates: filtra por id_user, que es llave primaria.
UPDATE usuario u
JOIN empleado e ON u.id_user = CONCAT('EMP-', e.id_cedula)
SET
    u.nombre = e.apellidos_nombre,
    u.email = CASE
        WHEN TRIM(COALESCE(e.direccion_email, '')) <> ''
         AND NOT EXISTS (
             SELECT 1
             FROM (
                 SELECT id_user, email
                 FROM usuario
             ) ux
             WHERE LOWER(ux.email) = LOWER(TRIM(e.direccion_email))
               AND ux.id_user <> u.id_user
         )
        THEN LOWER(TRIM(e.direccion_email))
        ELSE u.email
    END,
    u.rol = 'EMPLEADO',
    u.estado = 1,
    u.acciones = 'VISTA',
    u.id_cedula = e.id_cedula
WHERE e.estado = 'ACTIVO'
  AND u.id_user IN (
      SELECT id_user
      FROM (
          SELECT CONCAT('EMP-', id_cedula) AS id_user
          FROM empleado
          WHERE estado = 'ACTIVO'
      ) AS activos
  );

-- 3) A las cuentas EMP activas sin password_hash se les pone la clave estandar.
UPDATE usuario
SET password_hash = @HASH_ESTANDAR,
    debe_cambiar_clave = 1
WHERE (password_hash IS NULL OR TRIM(password_hash) = '')
  AND id_user IN (
      SELECT id_user
      FROM (
          SELECT CONCAT('EMP-', id_cedula) AS id_user
          FROM empleado
          WHERE estado = 'ACTIVO'
      ) AS activos
  );

COMMIT;
