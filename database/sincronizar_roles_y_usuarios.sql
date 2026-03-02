-- Sincroniza usuarios y roles según BDatos_APPGH - User.csv y Rol.csv.
-- Asegura que gestor.contratacion@colbeef.com tenga rol exacto 'GESTOR DE CONTRATACION'
-- y que todos los roles tengan el módulo permisos visible.
-- Ejecutar en MySQL (si da error 1175: SET SQL_SAFE_UPDATES = 0; antes y 1 después).
--
-- Si sale "Table 'gestio_humana.rol_modulo' doesn't exist":
--   1) Ejecuta PRIMERO: crear_rol_modulo_y_permisos.sql  (crea rol_permiso y rol_modulo).
--   2) Luego ejecuta este script de nuevo.

USE gestio_humana;

-- Desactivar safe update para permitir UPDATE por modulo_key (no es PK)
SET SQL_SAFE_UPDATES = 0;

-- 1) Corregir roles en usuario (typos o valores incorrectos)
UPDATE usuario SET rol = 'GESTOR DE CONTRATACION' WHERE id_user = 'US-0003';
UPDATE usuario SET rol = 'GESTOR DE NOMINA'          WHERE id_user = 'US-0006';
UPDATE usuario SET nombre = 'GESTOR DE NOMINA'       WHERE id_user = 'US-0006';
UPDATE usuario SET rol = 'ADMIN'                     WHERE id_user IN ('US-0001','US-0002','US-0010');
UPDATE usuario SET rol = 'COORD. GH'                  WHERE id_user = 'US-0004';
UPDATE usuario SET rol = 'BIENESTAR SOCIAL'          WHERE id_user = 'US-0005';
UPDATE usuario SET rol = 'GESTOR SST'                WHERE id_user IN ('US-0007','US-0008','US-0009');

-- 2) Forzar módulo permisos visible para todos los roles
UPDATE rol_modulo SET visible = 1 WHERE modulo_key = 'permisos';

-- 3) Si faltan filas en rol_modulo, insertar (permisos para los 6 roles)
INSERT IGNORE INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES
('ADMIN', 'permisos', 1),
('COORD. GH', 'permisos', 1),
('GESTOR DE CONTRATACION', 'permisos', 1),
('BIENESTAR SOCIAL', 'permisos', 1),
('GESTOR DE NOMINA', 'permisos', 1),
('GESTOR SST', 'permisos', 1);

SET SQL_SAFE_UPDATES = 1;

-- 4) Verificación
SELECT id_user, email, nombre, rol FROM usuario ORDER BY id_user;
SELECT rol_nombre, modulo_key, visible FROM rol_modulo WHERE modulo_key = 'permisos';
