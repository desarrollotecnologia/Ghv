USE gestio_humana;

START TRANSACTION;

UPDATE usuario
SET nombre = 'LIDER CORRALES',
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR'
WHERE id_user = 'US-0011'
   OR email = 'coordinacion.corrales@colbeef.com';

COMMIT;
