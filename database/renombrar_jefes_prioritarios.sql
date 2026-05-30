USE gestio_humana;

START TRANSACTION;

-- Cambia solo los nombres visibles de estas cuentas.
-- No modifica correos, claves, roles, permisos ni vinculaciones.

UPDATE usuario
SET nombre = 'JEFE COMPRAS'
WHERE id_user = 'US-0022'
   OR email = 'coordinacion.compras@colbeef.com';

UPDATE usuario
SET nombre = 'JEFE GESTION HUMANA'
WHERE id_user = 'US-0004'
   OR email = 'coordinacion.gestionhumana@colbeef.com';

UPDATE usuario
SET nombre = 'JEFE CONTABILIDAD'
WHERE id_user = 'US-0024'
   OR email = 'coordinacion.contabilidad@colbeef.com';

UPDATE usuario
SET nombre = 'JEFE TESORERIA Y CARTERA'
WHERE id_user = 'US-0014'
   OR email = 'coordinacion.tesoreria@colbeef.com';

UPDATE usuario
SET nombre = 'JEFE TICS'
WHERE id_user = 'US-0012'
   OR email = 'coordinacion.tecnologia@colbeef.com';

COMMIT;
