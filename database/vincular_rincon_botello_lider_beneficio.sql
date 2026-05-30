USE gestio_humana;

START TRANSACTION;

-- Caso puntual:
-- RINCON BOTELLO YERSON JAVIER queda vinculado a coordinacion.subproductos@colbeef.com.
--
-- Cuentas esperadas:
--   US-0026         => LIDER BENEFICIO
--   EMP-1127947335 => EMPLEADO
--
-- Lider Beneficio aprueba su equipo, pero como empleado reporta a Jefe Produccion.

SET @hash_estandar := 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';
SET @empleado_nombre := (SELECT apellidos_nombre FROM empleado WHERE id_cedula = '1127947335' LIMIT 1);

-- Renombrar y vincular la cuenta principal de Beneficio/Subproductos.
UPDATE usuario
SET
    nombre = 'LIDER BENEFICIO',
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR',
    id_cedula = '1127947335'
WHERE id_user = 'US-0026'
   OR email = 'coordinacion.subproductos@colbeef.com';

-- Asegurar cuenta EMP para portal de empleado.
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
VALUES (
    'EMP-1127947335',
    '1127947335@empleado.colbeef.local',
    @hash_estandar,
    @empleado_nombre,
    'EMPLEADO',
    1,
    'VISTA',
    '1127947335',
    1
)
ON DUPLICATE KEY UPDATE
    nombre = VALUES(nombre),
    rol = 'EMPLEADO',
    estado = 1,
    acciones = 'VISTA',
    id_cedula = VALUES(id_cedula);

-- Subproductos queda bajo Lider Beneficio.
UPDATE empleado
SET id_user_encargado = 'US-0026'
WHERE estado = 'ACTIVO'
  AND area = 'SUBPRODUCTOS COMESTIBLES';

-- Yerson, como empleado, reporta a Jefe Produccion.
UPDATE empleado
SET id_user_encargado = 'US-0025'
WHERE id_cedula = '1127947335';

COMMIT;
