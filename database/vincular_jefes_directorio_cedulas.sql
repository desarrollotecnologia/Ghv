USE gestio_humana;

START TRANSACTION;

SET @hash_estandar := 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';

-- ------------------------------------------------------------
-- 1) coordinacion.ambiental@ — REY RODRIGUEZ KEVIN ANDRES (1102384611)
-- ------------------------------------------------------------
UPDATE usuario
SET nombre = 'LIDER AMBIENTAL', rol = 'JEFE INMEDIATO', estado = 1, acciones = 'APROBAR', id_cedula = '1102384611'
WHERE LOWER(TRIM(email)) = 'coordinacion.ambiental@colbeef.com';

INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
SELECT
    'EMP-1102384611',
    '1102384611@empleado.colbeef.local',
    @hash_estandar,
    e.apellidos_nombre,
    'EMPLEADO', 1, 'VISTA', '1102384611', 1
FROM empleado e WHERE e.id_cedula = '1102384611'
ON DUPLICATE KEY UPDATE
    nombre = VALUES(nombre), id_cedula = VALUES(id_cedula), rol = 'EMPLEADO', estado = 1, acciones = 'VISTA';

-- ------------------------------------------------------------
-- 2) coordinacion.lyd@ — ISIDRO ARCILA PAULA ANDREA (1095835855)
-- ------------------------------------------------------------
UPDATE usuario
SET nombre = 'SUPERVISOR LYD', rol = 'JEFE INMEDIATO', estado = 1, acciones = 'APROBAR', id_cedula = '1095835855'
WHERE LOWER(TRIM(email)) = 'coordinacion.lyd@colbeef.com';

INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
SELECT
    'EMP-1095835855',
    '1095835855@empleado.colbeef.local',
    @hash_estandar,
    e.apellidos_nombre,
    'EMPLEADO', 1, 'VISTA', '1095835855', 1
FROM empleado e WHERE e.id_cedula = '1095835855'
ON DUPLICATE KEY UPDATE
    nombre = VALUES(nombre), id_cedula = VALUES(id_cedula), rol = 'EMPLEADO', estado = 1, acciones = 'VISTA';

-- ------------------------------------------------------------
-- 3) director.surtidores@ — RINCON SARMIENTO CARLOS ANDRES (1977852)
-- ------------------------------------------------------------
UPDATE usuario
SET nombre = 'DIRECTOR NEGOCIOS GANADEROS', rol = 'JEFE INMEDIATO', estado = 1, acciones = 'APROBAR', id_cedula = '1977852'
WHERE LOWER(TRIM(email)) = 'director.surtidores@colbeef.com';

INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
SELECT
    'EMP-1977852',
    '1977852@empleado.colbeef.local',
    @hash_estandar,
    e.apellidos_nombre,
    'EMPLEADO', 1, 'VISTA', '1977852', 1
FROM empleado e WHERE e.id_cedula = '1977852'
ON DUPLICATE KEY UPDATE
    nombre = VALUES(nombre), id_cedula = VALUES(id_cedula), rol = 'EMPLEADO', estado = 1, acciones = 'VISTA';

-- ------------------------------------------------------------
-- 4) gerencia.operaciones@ — QUESADA ZORRILLA WILHELM ARLEY (1098725715)
-- ------------------------------------------------------------
UPDATE usuario
SET nombre = 'DIRECTOR CONTROLLER', rol = 'JEFE INMEDIATO', estado = 1, acciones = 'APROBAR', id_cedula = '1098725715'
WHERE LOWER(TRIM(email)) = 'gerencia.operaciones@colbeef.com';

INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
SELECT
    'EMP-1098725715',
    '1098725715@empleado.colbeef.local',
    @hash_estandar,
    e.apellidos_nombre,
    'EMPLEADO', 1, 'VISTA', '1098725715', 1
FROM empleado e WHERE e.id_cedula = '1098725715'
ON DUPLICATE KEY UPDATE
    nombre = VALUES(nombre), id_cedula = VALUES(id_cedula), rol = 'EMPLEADO', estado = 1, acciones = 'VISTA';

-- Verificación
SELECT u.email, u.nombre, u.rol, u.id_cedula, e.apellidos_nombre
FROM usuario u
LEFT JOIN empleado e ON e.id_cedula = u.id_cedula
WHERE LOWER(TRIM(u.email)) IN (
    'coordinacion.ambiental@colbeef.com',
    'coordinacion.lyd@colbeef.com',
    'director.surtidores@colbeef.com',
    'gerencia.operaciones@colbeef.com'
)
ORDER BY u.email;

COMMIT;
