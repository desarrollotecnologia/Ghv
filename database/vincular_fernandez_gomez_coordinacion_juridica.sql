USE gestio_humana;

START TRANSACTION;

-- Caso puntual:
-- Empleado: 1098752811 - FERNANDEZ GOMEZ SAID JULIAN
-- Jefe inmediato correcto: COORDINACION JURIDICA (coordinacion.juridica@colbeef.com)

UPDATE empleado
SET id_user_encargado = (
    SELECT id_user
    FROM usuario
    WHERE email = 'coordinacion.juridica@colbeef.com'
      AND COALESCE(estado, 1) = 1
    LIMIT 1
)
WHERE id_cedula = '1098752811';

-- Verificacion
SELECT
    e.id_cedula,
    e.apellidos_nombre AS empleado,
    e.area,
    e.id_user_encargado,
    u.nombre AS jefe_nombre,
    u.email AS jefe_email,
    u.rol AS jefe_rol
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.id_cedula = '1098752811';

COMMIT;
