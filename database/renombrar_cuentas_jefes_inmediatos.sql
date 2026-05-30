USE gestio_humana;

START TRANSACTION;

-- Normaliza nombres visibles de cuentas aprobadoras.
-- No cambia correos, claves, roles ni vinculaciones con empleados.

UPDATE usuario SET nombre = 'JEFE CORRALES'       WHERE id_user = 'US-0011' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE TICS'          WHERE id_user = 'US-0012' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE PROYECTOS'     WHERE id_user = 'US-0013' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE TESORERIA Y CARTERA' WHERE id_user = 'US-0014' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE PRODUCCION'    WHERE id_user = 'US-0015' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE JURIDICA'      WHERE id_user = 'US-0016' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE JURIDICA'      WHERE id_user = 'US-0017' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE GENERAL'       WHERE id_user = 'US-0018' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'DIRECTOR ADMINISTRATIVO FINANCIERO' WHERE id_user = 'US-0019' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE CALIDAD'       WHERE id_user = 'US-0020' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE COMERCIAL'     WHERE id_user = 'US-0021' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE COMPRAS'       WHERE id_user = 'US-0022' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE ADMINISTRATIVO' WHERE id_user = 'US-0023' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE CONTABILIDAD'  WHERE id_user = 'US-0024' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE LINEA'         WHERE id_user = 'US-0025' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE SUBPRODUCTOS'  WHERE id_user = 'US-0026' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE DESPOSTE'      WHERE id_user = 'US-0027' AND rol = 'JEFE INMEDIATO';
UPDATE usuario SET nombre = 'JEFE CALIDAD'       WHERE id_user = 'US-0028' AND rol = 'JEFE INMEDIATO';

UPDATE usuario
SET nombre = 'JEFE GESTION HUMANA'
WHERE id_user = 'US-0004'
   OR email = 'coordinacion.gestionhumana@colbeef.com';

COMMIT;
