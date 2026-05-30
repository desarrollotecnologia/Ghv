USE gestio_humana;

START TRANSACTION;

-- Caso puntual:
-- FERNANDEZ GOMEZ SAID JULIAN debe poder cambiar entre:
--   US-0017        => COORDINACION JURIDICA / JEFE INMEDIATO
--   EMP-1098752811 => EMPLEADO
--
-- Además, si él mismo debe tener aprobador, queda asignado a Coordinacion Juridica
-- para mantener el comportamiento solicitado anteriormente.

SET @hash_estandar := 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';
SET @empleado_nombre := (SELECT apellidos_nombre FROM empleado WHERE id_cedula = '1098752811' LIMIT 1);
SET @emp_email := '1098752811@empleado.colbeef.local';

-- Vincular cuenta coordinadora con la cedula de FERNANDEZ.
UPDATE usuario
SET
    nombre = 'JEFE JURIDICA',
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR',
    id_cedula = '1098752811'
WHERE id_user = 'US-0017'
LIMIT 1;

-- Asegurar cuenta EMP para modo empleado.
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
VALUES (
    'EMP-1098752811',
    @emp_email,
    @hash_estandar,
    @empleado_nombre,
    'EMPLEADO',
    1,
    'VISTA',
    '1098752811',
    1
)
ON DUPLICATE KEY UPDATE
    nombre = VALUES(nombre),
    email = VALUES(email),
    rol = 'EMPLEADO',
    estado = 1,
    acciones = 'VISTA',
    id_cedula = VALUES(id_cedula);

UPDATE empleado
SET id_user_encargado = 'US-0017'
WHERE id_cedula = '1098752811';

COMMIT;
