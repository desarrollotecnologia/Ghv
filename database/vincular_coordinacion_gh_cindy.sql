-- Vincular coordinacion.gestionhumana@colbeef.com (US-0004) con VERA MORA CINDY LEOMAR
-- y crear cuenta portal EMPLEADO para "Cambiar a empleado".
-- Ejecutar en gestio_humana (MySQL Workbench).

USE gestio_humana;

SET @HASH_ESTANDAR = 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';
SET @CEDULA = '1098661407';

-- 1) Cuenta COORD. GH → cédula del empleado
UPDATE usuario
SET id_cedula = @CEDULA
WHERE id_user = 'US-0004';

-- 2) Cuenta portal EMPLEADO (misma cédula) — rol EMPLEADO obligatorio para "Cambiar a empleado"
INSERT IGNORE INTO usuario (id_user, email, password_hash, nombre, rol, estado, id_cedula)
VALUES (
    CONCAT('EMP-', @CEDULA),
    CONCAT('EMP-', @CEDULA, '@empleado.colbeef.local'),
    @HASH_ESTANDAR,
    'VERA MORA CINDY LEOMAR',
    'EMPLEADO',
    1,
    @CEDULA
);

-- Si ya existía EMP-1098661407 con otro rol (COORD. GH / ADMIN), corregir
UPDATE usuario
SET rol = 'EMPLEADO',
    id_cedula = @CEDULA,
    estado = 1,
    nombre = 'VERA MORA CINDY LEOMAR'
WHERE id_user = CONCAT('EMP-', @CEDULA);

-- US-0004 = cuenta de trabajo Cindy (ADMIN / Coordinación GH)
UPDATE usuario
SET rol = 'ADMIN',
    acciones = 'TODOS LOS CAMBIOS',
    id_cedula = @CEDULA,
    estado = 1
WHERE id_user = 'US-0004';

-- 3) Jefe inmediato de Cindy (modo empleado: permisos/vacaciones → Gerencia Financiera)
UPDATE empleado
SET id_user_encargado = (
    SELECT id_user FROM usuario WHERE email = 'gerencia.financiera@colbeef.com' LIMIT 1
)
WHERE id_cedula = @CEDULA;

-- 4) Verificación
SELECT id_user, nombre, email, rol, id_cedula
FROM usuario
WHERE id_user IN ('US-0004', CONCAT('EMP-', @CEDULA))
   OR id_cedula = @CEDULA
ORDER BY id_user;

SELECT e.id_cedula, e.apellidos_nombre, e.area, e.estado,
       e.id_user_encargado, j.nombre AS jefe_nombre, j.email AS jefe_email
FROM empleado e
LEFT JOIN usuario j ON j.id_user = e.id_user_encargado
WHERE e.id_cedula = @CEDULA;
