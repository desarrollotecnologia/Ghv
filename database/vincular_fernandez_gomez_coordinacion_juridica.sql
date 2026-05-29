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
SET @hash_estandar := 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';

-- Vincular cuenta coordinadora con la cedula de FERNANDEZ.
UPDATE usuario
SET
    nombre = (SELECT apellidos_nombre FROM empleado WHERE id_cedula = @cedula LIMIT 1),
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR',
    id_cedula = @cedula
WHERE id_user = @coord_user
   OR email = 'coordinacion.juridica@colbeef.com';

-- Asegurar cuenta EMP para modo empleado.
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
SELECT
    @emp_user,
    CASE
        WHEN TRIM(COALESCE(direccion_email, '')) <> ''
        THEN LOWER(TRIM(direccion_email))
        ELSE CONCAT(@cedula, '@empleado.colbeef.local')
    END,
    @hash_estandar,
    apellidos_nombre,
    'EMPLEADO',
    1,
    'VISTA',
    id_cedula,
    1
FROM empleado
WHERE id_cedula = @cedula
ON DUPLICATE KEY UPDATE
    nombre = VALUES(nombre),
    rol = 'EMPLEADO',
    estado = 1,
    acciones = 'VISTA',
    id_cedula = VALUES(id_cedula);

UPDATE empleado
SET id_user_encargado = (
    SELECT id_user
    FROM usuario
    WHERE email = 'coordinacion.juridica@colbeef.com'
      AND COALESCE(estado, 1) = 1
    LIMIT 1
)
WHERE id_cedula = @cedula;

-- Verificacion
SELECT
    e.id_cedula,
    e.apellidos_nombre AS empleado,
    e.area,
    e.id_user_encargado,
    u.nombre AS jefe_nombre,
    u.email AS jefe_email,
    u.rol AS jefe_rol
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.id_cedula = @cedula;

SELECT id_user, nombre, email, rol, estado, id_cedula
FROM usuario
WHERE id_user IN (@coord_user, @emp_user)
ORDER BY id_user;

COMMIT;
