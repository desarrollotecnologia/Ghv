USE gestio_humana;

START TRANSACTION;

UPDATE usuario
SET email = 'desposte@colbeef.com',
    nombre = 'LIDER DESPOSTE',
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR'
WHERE id_user = 'US-0027'
   OR email = 'coordinacion.desposte@colbeef.com';

COMMIT;
