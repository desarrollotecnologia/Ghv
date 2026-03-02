-- Validación de envío de correo de resolución (aprobación/rechazo).
-- Permite comprobar en BD si el correo se envió sin depender solo del buzón.
-- Ejecutar una vez; si la columna ya existe, ignorar el error.
ALTER TABLE solicitud_permiso ADD COLUMN correo_resolucion_enviado TINYINT(1) NULL COMMENT '1=envíado, 0=no enviado';
ALTER TABLE solicitud_permiso ADD COLUMN correo_resolucion_at DATETIME NULL COMMENT 'Cuándo se envió el correo de resolución';
