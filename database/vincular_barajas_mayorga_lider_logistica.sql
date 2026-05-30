USE gestio_humana;

START TRANSACTION;

-- Caso puntual:
-- BARAJAS MAYORGA WILMER DARIO queda vinculado a coordinacion.logistico@colbeef.com.
--
-- Cuentas esperadas:
--   US-0001         => LIDER LOGISTICA
--   EMP-1095807041 => EMPLEADO

SET @hash_estandar := 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';
SET @empleado_nombre := (SELECT apellidos_nombre FROM empleado WHERE id_cedula = '1095807041' LIMIT 1);

-- Renombrar y vincular la cuenta principal de Logistica.
UPDATE usuario
SET
    nombre = 'LIDER LOGISTICA',
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR',
    id_cedula = '1095807041'
WHERE id_user = 'US-0001'
   OR email = 'coordinacion.logistico@colbeef.com';

-- Asegurar cuenta EMP para portal de empleado.
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
VALUES (
    'EMP-1095807041',
    '1095807041@empleado.colbeef.local',
    @hash_estandar,
    @empleado_nombre,
    'EMPLEADO',
    1,
    'VISTA',
    '1095807041',
    1
)
ON DUPLICATE KEY UPDATE
    nombre = VALUES(nombre),
    rol = 'EMPLEADO',
    estado = 1,
    acciones = 'VISTA',
    id_cedula = VALUES(id_cedula);

-- El equipo de Logistica queda bajo Lider Logistica.
UPDATE empleado
SET id_user_encargado = 'US-0001'
WHERE estado = 'ACTIVO'
  AND area IN ('LOGISTICA', 'LOGISTICA DESPOSTE');

-- Wilmer, como empleado, reporta a Jefe Produccion para sus propias solicitudes.
UPDATE empleado
SET id_user_encargado = 'US-0025'
WHERE id_cedula = '1095807041';

COMMIT;
