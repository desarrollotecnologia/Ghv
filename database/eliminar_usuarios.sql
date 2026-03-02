-- Elimina todos los usuarios para poder volver a insertarlos sin error "duplicado".
-- Ejecutar en MySQL Workbench con la BD gestio_humana seleccionada.

USE gestio_humana;

-- Quitar referencia en solicitudes de permiso (quien resolvió)
UPDATE solicitud_permiso SET resuelto_por = NULL WHERE resuelto_por IS NOT NULL;

-- Borrar todos los usuarios
DELETE FROM usuario;

-- Verificar (debe salir 0 filas)
SELECT COUNT(*) AS usuarios_restantes FROM usuario;
