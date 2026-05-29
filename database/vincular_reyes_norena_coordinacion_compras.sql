USE gestio_humana;

START TRANSACTION;

-- Caso puntual:
-- REYES NOREÑA BAIRON SHTIK reemplaza a SUAREZ FREDDY GIOVANNY
-- como Coordinacion Compras.
--
-- Cuentas esperadas:
--   US-0022        => COORDINACION COMPRAS / JEFE INMEDIATO
--   EMP-1098698851 => EMPLEADO

SET @hash_estandar := 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';
SET @empleado_nombre := (SELECT apellidos_nombre FROM empleado WHERE id_cedula = '1098698851' LIMIT 1);

-- Vincular cuenta coordinadora de Compras con la cedula de Bairon.
UPDATE usuario
SET
    nombre = @empleado_nombre,
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR',
    id_cedula = '1098698851'
WHERE id_user = 'US-0022'
LIMIT 1;

-- Asegurar cuenta EMP para modo empleado. Si ya existe, conserva su correo actual.
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
VALUES (
    'EMP-1098698851',
    '1098698851@empleado.colbeef.local',
    @hash_estandar,
    @empleado_nombre,
    'EMPLEADO',
    1,
    'VISTA',
    '1098698851',
    1
)
ON DUPLICATE KEY UPDATE
    nombre = VALUES(nombre),
    rol = 'EMPLEADO',
    estado = 1,
    acciones = 'VISTA',
    id_cedula = VALUES(id_cedula);

-- Todo Compras queda bajo la nueva coordinacion.
UPDATE empleado
SET id_user_encargado = 'US-0022'
WHERE estado = 'ACTIVO'
  AND area = 'COMPRAS';

-- Bairon, como empleado, reporta a Gerencia Financiera para sus propias solicitudes.
UPDATE empleado
SET id_user_encargado = (
    SELECT id_user
    FROM usuario
    WHERE email = 'gerencia.financiera@colbeef.com'
    LIMIT 1
)
WHERE id_cedula = '1098698851';

COMMIT;
