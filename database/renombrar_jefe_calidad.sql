USE gestio_humana;

START TRANSACTION;

UPDATE usuario
SET nombre = 'JEFE CALIDAD',
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR'
WHERE id_user = 'US-0028'
   OR email = 'coordinacion.calidad@colbeef.com';

COMMIT;
