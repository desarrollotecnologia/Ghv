-- Agrega campo para guardar el motivo de cambio cuando el empleado edita
-- una solicitud de permiso y la reenvía a aprobación del jefe inmediato.
ALTER TABLE solicitud_permiso
ADD COLUMN motivo_cambio_empleado TEXT NULL
COMMENT 'Razón informada por el empleado al corregir y reenviar la solicitud';

