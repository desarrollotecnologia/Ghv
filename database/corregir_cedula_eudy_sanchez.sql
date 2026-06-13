-- Corregir numero de documento: SANCHEZ RODRIGUEZ EUDY JOSE
-- Anterior (incorrecto): 812344807011996
-- Nuevo: 6125076
USE gestio_humana;

START TRANSACTION;

SET @vieja := '812344807011996';
SET @nueva := '6125076';
SET @nombre := 'SANCHEZ RODRIGUEZ EUDY JOSE';

SET FOREIGN_KEY_CHECKS = 0;

UPDATE hijo
SET id_cedula = @nueva
WHERE id_cedula = @vieja;

UPDATE retirado
SET id_cedula = @nueva
WHERE id_cedula = @vieja;

UPDATE solicitud_permiso
SET id_cedula = @nueva
WHERE id_cedula = @vieja;

UPDATE solicitud_incapacidad
SET id_cedula = @nueva
WHERE id_cedula = @vieja;

UPDATE solicitud_vacaciones
SET id_cedula = @nueva
WHERE id_cedula = @vieja;

UPDATE usuario
SET id_cedula = @nueva
WHERE TRIM(COALESCE(id_cedula, '')) = @vieja;

UPDATE usuario
SET id_user = CONCAT('EMP-', @nueva),
    id_cedula = @nueva
WHERE id_user = CONCAT('EMP-', @vieja);

UPDATE empleado
SET id_cedula = @nueva
WHERE id_cedula = @vieja
  AND UPPER(TRIM(apellidos_nombre)) = UPPER(@nombre);

SET FOREIGN_KEY_CHECKS = 1;

COMMIT;

-- Verificacion
SELECT id_cedula, apellidos_nombre, departamento, area, estado
FROM empleado
WHERE id_cedula = @nueva
   OR UPPER(TRIM(apellidos_nombre)) = UPPER(@nombre);

SELECT id_user, email, nombre, rol, id_cedula
FROM usuario
WHERE TRIM(COALESCE(id_cedula, '')) = @nueva
   OR id_user = CONCAT('EMP-', @nueva);
