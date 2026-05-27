-- Vincular coordinacion.gestionhumana@colbeef.com con VERA MORA CINDY LEOMAR (cédula 1098661407)
-- Ejecutar en gestio_humana (MySQL Workbench o servidor donde corre la app).

USE gestio_humana;

-- Verificación previa
SELECT id_user, nombre, email, rol, id_cedula
FROM usuario
WHERE LOWER(email) = LOWER('coordinacion.gestionhumana@colbeef.com');

SELECT id_cedula, apellidos_nombre, area, estado
FROM empleado
WHERE id_cedula = '1098661407';

-- Vincular usuario US-0004 (COORD. GH) con la ficha de empleado
-- (WHERE por id_user = PK, compatible con Safe Updates de MySQL Workbench)
UPDATE usuario
SET id_cedula = '1098661407'
WHERE id_user = 'US-0004';

-- Verificación posterior
SELECT u.id_user, u.nombre, u.email, u.rol, u.id_cedula,
       e.apellidos_nombre, e.area, e.estado
FROM usuario u
LEFT JOIN empleado e ON e.id_cedula = u.id_cedula
WHERE LOWER(u.email) = LOWER('coordinacion.gestionhumana@colbeef.com');
