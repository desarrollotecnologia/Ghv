-- Portal del empleado: vincular usuario con empleado y rol EMPLEADO.
-- Ejecutar en MySQL (gestio_humana) UNA VEZ antes de usar registro de empleados.
-- Si id_cedula ya existe en usuario, comentar o omitir la línea ALTER.

USE gestio_humana;

-- Columna para vincular usuario con empleado (cuando rol = EMPLEADO)
ALTER TABLE usuario ADD COLUMN id_cedula VARCHAR(50) NULL COMMENT 'Cedula del empleado cuando rol=EMPLEADO';

-- Rol EMPLEADO (solo ve Solicitud de permiso)
INSERT IGNORE INTO rol (nombre) VALUES ('EMPLEADO');

-- Permiso mínimo para el rol
INSERT IGNORE INTO rol_permiso (rol_nombre, nivel) VALUES ('EMPLEADO', 'READ');

-- Módulo permisos visible para EMPLEADO (solo eso)
INSERT IGNORE INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES
('EMPLEADO', 'permisos', 1);
