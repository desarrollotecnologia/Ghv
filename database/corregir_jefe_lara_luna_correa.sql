USE gestio_humana;

START TRANSACTION;

-- Caso puntual:
-- Empleado: 1100891753 - CORREA MANRIQUE LEONARDO
-- Jefe inmediato correcto: LARA LUNA LEONARDO LUIS (cedula 73579178)
-- Lara debe tener dos cuentas:
--   US-0012       => modo coordinador / jefe inmediato
--   EMP-73579178 => modo empleado
--
-- No cambia jefes de toda el area TECNOLOGIA; solo este empleado.

SET @empleado_cedula := '1100891753';
SET @jefe_cedula := '73579178';
SET @empleado_user := CONCAT('EMP-', @empleado_cedula);
SET @jefe_coord_user := 'US-0012';
SET @jefe_emp_user := CONCAT('EMP-', @jefe_cedula);
SET @hash_estandar := 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';

-- Asegurar cuenta EMP para CORREA MANRIQUE LEONARDO.
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
SELECT
    @empleado_user,
    COALESCE(NULLIF(TRIM(direccion_email), ''), CONCAT(@empleado_cedula, '@empleado.colbeef.local')),
    @hash_estandar,
    apellidos_nombre,
    'EMPLEADO',
    1,
    'VISTA',
    id_cedula,
    1
FROM empleado
WHERE id_cedula = @empleado_cedula
ON DUPLICATE KEY UPDATE
    rol = 'EMPLEADO',
    estado = 1,
    id_cedula = VALUES(id_cedula),
    nombre = VALUES(nombre);

-- Asegurar cuenta coordinadora de LARA LUNA LEONARDO LUIS.
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
SELECT
    @jefe_coord_user,
    'coordinacion.tecnologia@colbeef.com',
    @hash_estandar,
    'JEFE TICS',
    'JEFE INMEDIATO',
    1,
    'APROBAR',
    id_cedula,
    1
FROM empleado
WHERE id_cedula = @jefe_cedula
ON DUPLICATE KEY UPDATE
    nombre = 'JEFE TICS',
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR',
    id_cedula = VALUES(id_cedula);

-- Asegurar cuenta EMP para LARA LUNA LEONARDO LUIS.
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
SELECT
    @jefe_emp_user,
    COALESCE(NULLIF(TRIM(direccion_email), ''), CONCAT(@jefe_cedula, '@empleado.colbeef.local')),
    @hash_estandar,
    apellidos_nombre,
    'EMPLEADO',
    1,
    'VISTA',
    id_cedula,
    1
FROM empleado
WHERE id_cedula = @jefe_cedula
ON DUPLICATE KEY UPDATE
    rol = 'EMPLEADO',
    estado = 1,
    id_cedula = VALUES(id_cedula),
    nombre = VALUES(nombre);

-- CORREA reporta a la cuenta coordinadora de LARA.
UPDATE empleado
SET id_user_encargado = @jefe_coord_user
WHERE id_cedula = @empleado_cedula
  AND EXISTS (
      SELECT 1
      FROM usuario
      WHERE id_user = @jefe_coord_user
        AND TRIM(COALESCE(id_cedula, '')) = @jefe_cedula
);

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
WHERE e.id_cedula = @empleado_cedula;

SELECT id_user, nombre, email, rol, estado, id_cedula
FROM usuario
WHERE id_user IN (@empleado_user, @jefe_coord_user, @jefe_emp_user)
ORDER BY id_user;

COMMIT;
