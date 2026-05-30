USE gestio_humana;

START TRANSACTION;

-- Caso puntual:
-- RODRIGUEZ RUIZ ALEXANDER queda vinculado a direccion.proyectos@colbeef.com.
--
-- Cuentas esperadas:
--   US-0013         => JEFE PROYECTOS / JEFE INMEDIATO
--   EMP-1098665901 => EMPLEADO

SET @hash_estandar := 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';
SET @empleado_nombre := (SELECT apellidos_nombre FROM empleado WHERE id_cedula = '1098665901' LIMIT 1);

-- Vincular cuenta de direccion/proyectos con la cedula de Alexander.
UPDATE usuario
SET
    nombre = 'JEFE PROYECTOS',
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR',
    id_cedula = '1098665901'
WHERE id_user = 'US-0013'
   OR email = 'direccion.proyectos@colbeef.com';

-- Asegurar cuenta EMP para portal de empleado.
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
VALUES (
    'EMP-1098665901',
    '1098665901@empleado.colbeef.local',
    @hash_estandar,
    @empleado_nombre,
    'EMPLEADO',
    1,
    'VISTA',
    '1098665901',
    1
)
ON DUPLICATE KEY UPDATE
    nombre = VALUES(nombre),
    rol = 'EMPLEADO',
    estado = 1,
    acciones = 'VISTA',
    id_cedula = VALUES(id_cedula);

-- Alexander, como empleado, reporta a Gerencia Financiera.
UPDATE empleado
SET id_user_encargado = (
    SELECT id_user
    FROM usuario
    WHERE email = 'gerencia.financiera@colbeef.com'
    LIMIT 1
)
WHERE id_cedula = '1098665901';

COMMIT;
