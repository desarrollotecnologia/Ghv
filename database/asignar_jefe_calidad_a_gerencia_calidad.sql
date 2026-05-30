USE gestio_humana;

START TRANSACTION;

-- La cuenta de coordinacion.calidad se muestra como Jefe Calidad.
UPDATE usuario
SET nombre = 'JEFE CALIDAD',
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR'
WHERE id_user = 'US-0028'
   OR email = 'coordinacion.calidad@colbeef.com';

-- Cuando el Jefe Calidad tenga empleado vinculado y pida como empleado,
-- su jefe inmediato debe ser Gerencia Calidad.
UPDATE empleado e
JOIN usuario u ON u.id_cedula = e.id_cedula
SET e.id_user_encargado = 'US-0020'
WHERE u.id_user = 'US-0028'
  AND COALESCE(u.id_cedula, '') <> '';

COMMIT;
