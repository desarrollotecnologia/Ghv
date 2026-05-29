USE gestio_humana;

START TRANSACTION;

UPDATE solicitud_permiso SET tipo = 'Cita médica' WHERE tipo = 'Cita Medica';
UPDATE solicitud_permiso SET tipo = 'Calamidad doméstica' WHERE tipo = 'Calamidad domestica';
UPDATE solicitud_permiso SET tipo = 'Jurado de votación' WHERE tipo = 'Jurado de votacion';
UPDATE solicitud_permiso SET tipo = 'Exámenes médicos' WHERE tipo = 'Examenes Medicos';
UPDATE solicitud_permiso SET tipo = 'Reuniones escolares' WHERE tipo = 'Reuniones Escolares';

COMMIT;
