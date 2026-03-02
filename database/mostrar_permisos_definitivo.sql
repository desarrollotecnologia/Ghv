-- Para que aparezca "Permisos" en el menú.
-- Ejecuta en MySQL Workbench. Si da error 1175 (safe updates), ejecuta antes:
--   SET SQL_SAFE_UPDATES = 0;
-- y al final: SET SQL_SAFE_UPDATES = 1;

USE gestio_humana;

-- 1) Corregir typo: GERTOR -> GESTOR
UPDATE usuario SET rol = 'GESTOR DE NOMINA' WHERE rol = 'GERTOR DE NOMINA';

-- 2) Activar visible=1 para el módulo permisos
UPDATE rol_modulo SET visible = 1 WHERE modulo_key = 'permisos';

-- 3) Asegurar que todos los roles tengan el módulo permisos
INSERT IGNORE INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES
('ADMIN', 'permisos', 1),
('COORD. GH', 'permisos', 1),
('GESTOR DE CONTRATACION', 'permisos', 1),
('BIENESTAR SOCIAL', 'permisos', 1),
('GESTOR DE NOMINA', 'permisos', 1),
('GESTOR SST', 'permisos', 1);

-- 4) Comprobar
SELECT rol_nombre, modulo_key, visible FROM rol_modulo WHERE modulo_key = 'permisos';
SELECT id_user, nombre, email, rol FROM usuario;
