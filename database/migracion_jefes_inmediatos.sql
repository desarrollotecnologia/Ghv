-- ============================================================
-- MIGRACION: Crear rol JEFE INMEDIATO + 19 usuarios de coordinacion/gerencia
-- Fecha: 2026-04-18
--
-- Estos usuarios son los "jefes inmediatos" de las areas.
-- Cada empleado debe asignarse a uno de ellos via empleado.id_user_encargado
-- (ver migracion_encargado_empleado.sql). Entonces el jefe podra:
--   * Recibir correo cuando un empleado solicita permiso o vacaciones.
--   * Entrar al sistema y ver SOLO las solicitudes de sus empleados asignados.
--   * Aprobar o rechazar esas solicitudes.
--
-- Contrasena inicial para TODOS: Colbeef2026*
-- El hash corresponde a esa contrasena. Podran cambiarla al entrar (debe_cambiar_clave=1).
-- ============================================================
USE gestio_humana;

START TRANSACTION;

-- ---------- 1. Crear el rol ----------
INSERT IGNORE INTO rol (nombre) VALUES ('JEFE INMEDIATO');

-- Nivel de permiso: WRITE (puede aprobar/rechazar pero no ALL)
INSERT IGNORE INTO rol_permiso (rol_nombre, nivel) VALUES ('JEFE INMEDIATO', 'WRITE');

-- Modulos visibles: solo el de permisos/vacaciones (de ahi aprueban/rechazan)
-- Si despues quieren que tambien vean Personal/Organizacion/etc., agregar mas filas.
INSERT IGNORE INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES
    ('JEFE INMEDIATO', 'permisos',     1),
    ('JEFE INMEDIATO', 'organizacion', 0),
    ('JEFE INMEDIATO', 'personal',     0),
    ('JEFE INMEDIATO', 'retiro',       0),
    ('JEFE INMEDIATO', 'familia',      0),
    ('JEFE INMEDIATO', 'eventos',      0),
    ('JEFE INMEDIATO', 'eps',          0),
    ('JEFE INMEDIATO', 'fondos',       0),
    ('JEFE INMEDIATO', 'reportes',     0),
    ('JEFE INMEDIATO', 'admin',        0);

-- ---------- 2. Crear los 19 usuarios ----------
-- Hash correspondiente a la contrasena "Colbeef2026*" (generado con werkzeug.security.generate_password_hash).
-- Si su instalacion de werkzeug no acepta scrypt, entrar como ADMIN y resetear la clave.
-- Usamos INSERT IGNORE: si un email ya existe (ej. coordinacion.logistico ya es US-0001),
-- no lo vuelve a crear ni modifica su rol actual.

INSERT IGNORE INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, debe_cambiar_clave) VALUES
    ('US-0011', 'coordinacion.corrales@colbeef.com',       'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'COORDINACION CORRALES',       'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0012', 'coordinacion.tecnologia@colbeef.com',     'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'COORDINACION TECNOLOGIA',     'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0013', 'direccion.proyectos@colbeef.com',         'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'DIRECCION PROYECTOS',         'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0014', 'coordinacion.tesoreria@colbeef.com',      'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'COORDINACION TESORERIA',      'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0015', 'gerencia.produccion@colbeef.com',         'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'GERENCIA PRODUCCION',         'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0016', 'gerencia.juridica@colbeef.com',           'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'GERENCIA JURIDICA',           'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0017', 'coordinacion.juridica@colbeef.com',       'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'COORDINACION JURIDICA',       'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0018', 'gerencia.general@colbeef.com',            'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'GERENCIA GENERAL',            'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0019', 'gerencia.financiera@colbeef.com',         'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'GERENCIA FINANCIERA',         'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0020', 'gerencia.calidad@colbeef.com',            'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'GERENCIA CALIDAD',            'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0021', 'gerencia.comercial@colbeef.com',          'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'GERENCIA COMERCIAL',          'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0022', 'coordinacion.compras@colbeef.com',        'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'COORDINACION COMPRAS',        'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0023', 'coordinacion.administrativo@colbeef.com', 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'COORDINACION ADMINISTRATIVO', 'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0024', 'coordinacion.contabilidad@colbeef.com',   'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'COORDINACION CONTABILIDAD',   'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0025', 'coordinacion.linea@colbeef.com',          'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'COORDINACION LINEA',          'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0026', 'coordinacion.subproductos@colbeef.com',   'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'COORDINACION SUBPRODUCTOS',   'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0027', 'coordinacion.desposte@colbeef.com',       'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'COORDINACION DESPOSTE',       'JEFE INMEDIATO', 1, 'APROBAR', 1),
    ('US-0028', 'coordinacion.calidad@colbeef.com',        'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89', 'COORDINACION CALIDAD',        'JEFE INMEDIATO', 1, 'APROBAR', 1);
-- NOTA: coordinacion.logistico@colbeef.com NO se inserta porque ya existe como US-0001 (ADMIN).
-- Si ese usuario es tambien jefe inmediato de un area, simplemente asignalo como encargado
-- desde el formulario de empleado. Como ADMIN ya puede aprobar todas las solicitudes.

-- ---------- 3. Verificacion ----------
SELECT id_user, email, nombre, rol, estado
FROM usuario
WHERE rol = 'JEFE INMEDIATO'
ORDER BY id_user;

SELECT r.nombre AS rol, rp.nivel
FROM rol r
LEFT JOIN rol_permiso rp ON rp.rol_nombre = r.nombre
WHERE r.nombre = 'JEFE INMEDIATO';

SELECT rol_nombre, modulo_key, visible
FROM rol_modulo
WHERE rol_nombre = 'JEFE INMEDIATO'
ORDER BY modulo_key;

COMMIT;

-- ============================================================
-- USO POSTERIOR:
--   1) Un ADMIN o COORD. GH entra a "Personal Activo", abre un empleado,
--      "Editar" y en la seccion "Encargado / Jefe inmediato" selecciona
--      el jefe correspondiente del dropdown.
--   2) Se repite por cada empleado (o grupo de empleados de esa area).
--   3) El jefe inmediato recibe las solicitudes en su correo
--      (coordinacion.x@colbeef.com) y puede aprobarlas/rechazarlas al
--      entrar al sistema con Colbeef2026* (le pedira cambiar la clave).
-- ============================================================
