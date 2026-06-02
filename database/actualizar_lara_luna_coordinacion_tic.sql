-- Lara Luna: cargo COORDINACION TECNOLOGIA + cuenta jefe US-0012
USE gestio_humana;

START TRANSACTION;

UPDATE perfil_ocupacional
SET perfil_ocupacional = 'JEFE TICS'
WHERE id_perfil = '80';

UPDATE empleado
SET id_perfil_ocupacional = '80'
WHERE id_cedula = '73579178';

UPDATE usuario
SET
    nombre = 'JEFE TICS',
    rol = 'JEFE INMEDIATO',
    acciones = 'APROBAR',
    id_cedula = '73579178'
WHERE id_user = 'US-0012'
   OR LOWER(TRIM(email)) = 'coordinacion.tecnologia@colbeef.com';

SELECT e.id_cedula, e.apellidos_nombre, p.perfil_ocupacional, u.nombre AS cuenta_jefe
FROM empleado e
LEFT JOIN perfil_ocupacional p ON TRIM(p.id_perfil) = TRIM(e.id_perfil_ocupacional)
LEFT JOIN usuario u ON u.id_user = 'US-0012'
WHERE e.id_cedula = '73579178';

COMMIT;
