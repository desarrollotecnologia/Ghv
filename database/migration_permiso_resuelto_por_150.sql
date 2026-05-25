-- Amplía el campo resuelto_por para guardar correos completos
-- cuando la aprobación/rechazo se hace por enlace de correo.
ALTER TABLE solicitud_permiso
MODIFY COLUMN resuelto_por VARCHAR(150) NULL;

