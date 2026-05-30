USE gestio_humana;

START TRANSACTION;

-- Caso puntual:
-- VARGAS DURAN ROBINSON queda vinculado como jefe de Desposte.
--
-- Cuentas esperadas:
--   US-0027      => JEFE DESPOSTE / JEFE INMEDIATO
--   EMP-91477701 => EMPLEADO

SET @hash_estandar := 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';
SET @empleado_nombre := (SELECT apellidos_nombre FROM empleado WHERE id_cedula = '91477701' LIMIT 1);

-- Vincular cuenta jefe de Desposte con la cedula de Robinson.
UPDATE usuario
SET
    nombre = 'JEFE DESPOSTE',
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR',
    id_cedula = '91477701'
WHERE id_user = 'US-0027'
LIMIT 1;

-- Asegurar cuenta EMP para portal de empleado.
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
VALUES (
    'EMP-91477701',
    '91477701@empleado.colbeef.local',
    @hash_estandar,
    @empleado_nombre,
    'EMPLEADO',
    1,
    'VISTA',
    '91477701',
    1
)
ON DUPLICATE KEY UPDATE
    nombre = VALUES(nombre),
    rol = 'EMPLEADO',
    estado = 1,
    acciones = 'VISTA',
    id_cedula = VALUES(id_cedula);

-- Desposte queda bajo el nuevo jefe.
UPDATE empleado
SET id_user_encargado = 'US-0027'
WHERE estado = 'ACTIVO'
  AND area IN (
      'LINEA DESPOSTE',
      'LAVANDERIA DESPOSTE',
      'PORCIONADO',
      'PRODUCCION DESPOSTE',
      'CALIDAD DESPOSTE',
      'L&D DESPOSTE',
      'L\\&D DESPOSTE',
      'MTTO DESPOSTE'
  );

-- Robinson, como empleado, reporta a Gerencia Produccion para sus propias solicitudes.
UPDATE empleado
SET id_user_encargado = (
    SELECT id_user
    FROM usuario
    WHERE email = 'gerencia.produccion@colbeef.com'
    LIMIT 1
)
WHERE id_cedula = '91477701';

COMMIT;
