USE gestio_humana;

START TRANSACTION;

-- Paola Andrea Muñoz Bernal — Jefe de Mercadeo (cédula 52822147)
-- Cuentas esperadas:
--   US-0033        => JEFE DE MERCADEO / JEFE INMEDIATO
--   EMP-52822147   => EMPLEADO (portal / Cambiar a empleado)
--
-- Si US-0033 ya existe con otro correo, ajuste id_user antes de ejecutar.

SET @hash_estandar := 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';
SET @cedula := '52822147';
SET @jefe_mercadeo_id := 'US-0033';
SET @dir_comercial_id := 'US-0021';
SET @empleado_nombre := (SELECT apellidos_nombre FROM empleado WHERE id_cedula = @cedula LIMIT 1);

INSERT IGNORE INTO rol (nombre) VALUES ('JEFE INMEDIATO');
INSERT IGNORE INTO rol_permiso (rol_nombre, nivel) VALUES ('JEFE INMEDIATO', 'WRITE');
INSERT INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES ('JEFE INMEDIATO', 'permisos', 1)
ON DUPLICATE KEY UPDATE visible = 1;

INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
VALUES (
    @jefe_mercadeo_id,
    'jefe.mercadeo@colbeef.com',
    @hash_estandar,
    'JEFE DE MERCADEO',
    'JEFE INMEDIATO',
    1,
    'APROBAR',
    @cedula,
    1
)
ON DUPLICATE KEY UPDATE
    email = 'jefe.mercadeo@colbeef.com',
    nombre = 'JEFE DE MERCADEO',
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR',
    id_cedula = @cedula,
    debe_cambiar_clave = 1;

INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
VALUES (
    CONCAT('EMP-', @cedula),
    CONCAT(@cedula, '@empleado.colbeef.local'),
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
    rol = 'EMPLEADO',
    estado = 1,
    acciones = 'VISTA',
    id_cedula = VALUES(id_cedula);

UPDATE empleado
SET
    direccion_email = 'jefe.mercadeo@colbeef.com',
    celular = '3187892520'
WHERE id_cedula = @cedula;

UPDATE empleado
SET id_user_encargado = @jefe_mercadeo_id
WHERE estado = 'ACTIVO'
  AND area = 'MERCADEO';

UPDATE empleado
SET id_user_encargado = @dir_comercial_id
WHERE id_cedula = @cedula;

COMMIT;

-- Verificación
SELECT u.id_user, u.email, u.nombre, u.rol, u.id_cedula, e.apellidos_nombre
FROM usuario u
LEFT JOIN empleado e ON e.id_cedula = u.id_cedula
WHERE u.id_user IN (@jefe_mercadeo_id, CONCAT('EMP-', @cedula));

SELECT e.id_cedula, e.apellidos_nombre, e.area, e.direccion_email, e.celular,
       e.id_user_encargado, j.nombre AS jefe_nombre, j.email AS jefe_email
FROM empleado e
LEFT JOIN usuario j ON j.id_user = e.id_user_encargado
WHERE e.estado = 'ACTIVO' AND e.area = 'MERCADEO';
