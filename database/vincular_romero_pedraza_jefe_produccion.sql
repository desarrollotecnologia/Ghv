USE gestio_humana;

START TRANSACTION;

-- Caso puntual:
-- ROMERO PEDRAZA SERGIO OMAR queda vinculado a coordinacion.linea@colbeef.com.
--
-- Cuentas esperadas:
--   US-0025         => JEFE PRODUCCION
--   EMP-1098738467 => EMPLEADO
--
-- Los lideres siguen aprobando su equipo, pero como empleados reportan a
-- JEFE PRODUCCION. Sergio, como empleado, reporta a Gerencia Calidad.

SET @hash_estandar := 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';
SET @empleado_nombre := (SELECT apellidos_nombre FROM empleado WHERE id_cedula = '1098738467' LIMIT 1);

-- Renombrar y vincular la cuenta principal de Produccion/Linea.
UPDATE usuario
SET
    nombre = 'JEFE PRODUCCION',
    rol = 'JEFE INMEDIATO',
    estado = 1,
    acciones = 'APROBAR',
    id_cedula = '1098738467'
WHERE id_user = 'US-0025'
   OR email = 'coordinacion.linea@colbeef.com';

-- Asegurar cuenta EMP para portal de empleado.
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, id_cedula, debe_cambiar_clave)
VALUES (
    'EMP-1098738467',
    '1098738467@empleado.colbeef.local',
    @hash_estandar,
    @empleado_nombre,
    'EMPLEADO',
    1,
    'VISTA',
    '1098738467',
    1
)
ON DUPLICATE KEY UPDATE
    nombre = VALUES(nombre),
    rol = 'EMPLEADO',
    estado = 1,
    acciones = 'VISTA',
    id_cedula = VALUES(id_cedula);

-- Linea de sacrificio queda bajo Jefe Produccion.
UPDATE empleado
SET id_user_encargado = 'US-0025'
WHERE estado = 'ACTIVO'
  AND area = 'LINEA DE SACRIFICIO';

-- Los lideres, como empleados, reportan a Jefe Produccion.
UPDATE empleado e
JOIN usuario u ON u.id_cedula = e.id_cedula
SET e.id_user_encargado = 'US-0025'
WHERE u.id_user IN ('US-0011', 'US-0026', 'US-0001', 'US-0027')
  AND COALESCE(u.id_cedula, '') <> '';

-- Sergio, como empleado, reporta a Gerencia Calidad.
UPDATE empleado
SET id_user_encargado = 'US-0020'
WHERE id_cedula = '1098738467';

COMMIT;
