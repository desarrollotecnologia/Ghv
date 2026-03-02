-- Formato GH-FR-007: agregar campos del formato oficial de autorización de permiso/licencia.
-- Ejecutar en MySQL sobre la BD gestio_humana. Si alguna columna ya existe, comentar esa línea.

USE gestio_humana;

ALTER TABLE solicitud_permiso ADD COLUMN area VARCHAR(100) NULL COMMENT 'Área del empleado';
ALTER TABLE solicitud_permiso ADD COLUMN permiso_remunerado TINYINT(1) NULL COMMENT '1=Sí, 0=No';
ALTER TABLE solicitud_permiso ADD COLUMN permiso_no_remunerado TINYINT(1) NULL COMMENT '1=Sí, 0=No';
ALTER TABLE solicitud_permiso ADD COLUMN hora_inicio TIME NULL COMMENT 'Hora de inicio';
ALTER TABLE solicitud_permiso ADD COLUMN hora_fin TIME NULL COMMENT 'Hora final';
