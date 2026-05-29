USE gestio_humana;

START TRANSACTION;

-- Caso puntual:
-- FERNANDEZ GOMEZ SAID JULIAN debe poder cambiar entre:
--   US-0017        => COORDINACION JURIDICA / JEFE INMEDIATO
--   EMP-1098752811 => EMPLEADO
--
-- Además, si él mismo debe tener aprobador, queda asignado a Coordinacion Juridica
-- para mantener el comportamiento solicitado anteriormente.

SET @cedula := '1098752811';
SET @coord_user := 'US-0017';
SET @emp_user := CONCAT('EMP-', @cedula);
SET @coord_email := 'coordinacion.juridica@colbeef.com';
SET @hash_estandar := 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';
SET @empleado_nombre := (SELECT apellidos_nombre FROM empleado WHERE id_cedula = @cedula LIMIT 1);
SET @emp_email := CONCAT(@cedula, '@empleado.colbeef.local');

-- Vincular cuenta coordinadora con la cedula de FERNANDEZ.
UPDATE usuario
SET
    nombre = @empleado_nombre,
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR',
    id_cedula = @cedula
WHERE id_user = @coord_user
LIMIT 1;

-- Asegurar cuenta EMP para modo empleado.
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
VALUES (
    @emp_user,
    @emp_email,
    @hash_estandar,
    @empleado_nombre,
    'EMPLEADO',
    1,
    'VISTA',
    @cedula,
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
SET id_user_encargado = @coord_user
WHERE id_cedula = @cedula;

COMMIT;
