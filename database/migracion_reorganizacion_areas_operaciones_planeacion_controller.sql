-- ============================================================
-- MIGRACION: Reorganización de áreas y departamentos (Jul-2026)
-- - AMBIENTAL, PTAP, PTAR -> DPTO DE OPERACIONES
-- - Eliminar depto PLANEACION Y PROYECTOS
-- - PLANEACION -> PLANEACION FINANCIERA en DPTO ADMON Y FINANCIERO
-- - En DPTO ADMON Y FINANCIERO retirar CONTROL INTERNO y ACCIONISTAS
-- - CONTROL INTERNO se unifica como CONTROLLER
-- ============================================================

USE gestio_humana;

START TRANSACTION;

-- 1) Asegurar departamentos objetivo
INSERT INTO departamento (nombre)
SELECT 'DPTO DE OPERACIONES'
WHERE NOT EXISTS (SELECT 1 FROM departamento WHERE UPPER(TRIM(nombre)) = 'DPTO DE OPERACIONES');

INSERT INTO departamento (nombre)
SELECT 'DPTO ADMON Y FINANCIERO'
WHERE NOT EXISTS (SELECT 1 FROM departamento WHERE UPPER(TRIM(nombre)) = 'DPTO ADMON Y FINANCIERO');

INSERT INTO departamento (nombre)
SELECT 'CONTROLLER'
WHERE NOT EXISTS (SELECT 1 FROM departamento WHERE UPPER(TRIM(nombre)) = 'CONTROLLER');

INSERT INTO departamento (nombre)
SELECT 'DIRECCION DE ASUNTOS CORPORATIVOS'
WHERE NOT EXISTS (SELECT 1 FROM departamento WHERE UPPER(TRIM(nombre)) = 'DIRECCION DE ASUNTOS CORPORATIVOS');

-- 2) IDs de departamentos
SET @dep_ops := (SELECT id FROM departamento WHERE UPPER(TRIM(nombre)) = 'DPTO DE OPERACIONES' LIMIT 1);
SET @dep_admin := (SELECT id FROM departamento WHERE UPPER(TRIM(nombre)) = 'DPTO ADMON Y FINANCIERO' LIMIT 1);
SET @dep_controller := (SELECT id FROM departamento WHERE UPPER(TRIM(nombre)) = 'CONTROLLER' LIMIT 1);
SET @dep_asuntos := (SELECT id FROM departamento WHERE UPPER(TRIM(nombre)) = 'DIRECCION DE ASUNTOS CORPORATIVOS' LIMIT 1);

-- 3) Asegurar áreas destino
INSERT INTO area (departamento_id, nombre)
SELECT @dep_controller, 'CONTROLLER'
WHERE @dep_controller IS NOT NULL
  AND NOT EXISTS (SELECT 1 FROM area WHERE UPPER(TRIM(nombre)) = 'CONTROLLER');

INSERT INTO area (departamento_id, nombre)
SELECT @dep_admin, 'PLANEACION FINANCIERA'
WHERE @dep_admin IS NOT NULL
  AND NOT EXISTS (
    SELECT 1 FROM area
    WHERE UPPER(TRIM(nombre)) = 'PLANEACION FINANCIERA'
      AND departamento_id = @dep_admin
  );

-- 4) Mover AMBIENTAL / PTAP / PTAR a operaciones
UPDATE area
SET departamento_id = @dep_ops
WHERE @dep_ops IS NOT NULL
  AND UPPER(TRIM(nombre)) IN ('AMBIENTAL', 'PTAP', 'PTAR');

UPDATE empleado
SET departamento = 'DPTO DE OPERACIONES'
WHERE UPPER(TRIM(area)) IN ('AMBIENTAL', 'PTAP', 'PTAR');

UPDATE retirado
SET departamento = 'DPTO DE OPERACIONES'
WHERE UPPER(TRIM(area)) IN ('AMBIENTAL', 'PTAP', 'PTAR');

-- 5) Unificar planeación en PLANEACION FINANCIERA (administrativo/financiero)
SET @area_planeacion_fin := (
    SELECT id FROM area
    WHERE UPPER(TRIM(nombre)) = 'PLANEACION FINANCIERA'
      AND departamento_id = @dep_admin
    LIMIT 1
);

UPDATE perfil_ocupacional p
JOIN area a ON a.id = p.area_id
SET p.area_id = @area_planeacion_fin
WHERE @area_planeacion_fin IS NOT NULL
  AND UPPER(TRIM(a.nombre)) IN ('PLANEACION', 'PLANEACION Y PROYECTOS')
  AND p.area_id <> @area_planeacion_fin;

UPDATE empleado
SET area = 'PLANEACION FINANCIERA',
    departamento = 'DPTO ADMON Y FINANCIERO'
WHERE UPPER(TRIM(area)) IN ('PLANEACION', 'PLANEACION Y PROYECTOS', 'PLANEACION FINANCIERA');

UPDATE retirado
SET area = 'PLANEACION FINANCIERA',
    departamento = 'DPTO ADMON Y FINANCIERO'
WHERE UPPER(TRIM(area)) IN ('PLANEACION', 'PLANEACION Y PROYECTOS', 'PLANEACION FINANCIERA');

DELETE FROM area
WHERE UPPER(TRIM(nombre)) IN ('PLANEACION', 'PLANEACION Y PROYECTOS')
  AND id <> @area_planeacion_fin;

DELETE FROM departamento
WHERE UPPER(TRIM(nombre)) = 'PLANEACION Y PROYECTOS'
  AND id NOT IN (SELECT DISTINCT departamento_id FROM area);

-- 6) Unificar CONTROL INTERNO -> CONTROLLER
SET @area_controller := (
    SELECT id FROM area
    WHERE UPPER(TRIM(nombre)) = 'CONTROLLER'
      AND departamento_id = @dep_controller
    LIMIT 1
);

UPDATE perfil_ocupacional p
JOIN area a ON a.id = p.area_id
SET p.area_id = @area_controller
WHERE @area_controller IS NOT NULL
  AND UPPER(TRIM(a.nombre)) = 'CONTROL INTERNO'
  AND p.area_id <> @area_controller;

UPDATE empleado
SET area = 'CONTROLLER',
    departamento = 'CONTROLLER'
WHERE UPPER(TRIM(area)) = 'CONTROL INTERNO';

UPDATE retirado
SET area = 'CONTROLLER',
    departamento = 'CONTROLLER'
WHERE UPPER(TRIM(area)) = 'CONTROL INTERNO';

DELETE FROM area
WHERE UPPER(TRIM(nombre)) = 'CONTROL INTERNO';

-- 7) Sacar ACCIONISTAS de administrativo/financiero (si existe allí)
UPDATE area
SET departamento_id = @dep_asuntos
WHERE @dep_asuntos IS NOT NULL
  AND UPPER(TRIM(nombre)) = 'ACCIONISTAS'
  AND departamento_id = @dep_admin;

UPDATE empleado
SET departamento = 'DIRECCION DE ASUNTOS CORPORATIVOS'
WHERE UPPER(TRIM(area)) = 'ACCIONISTAS'
  AND UPPER(TRIM(departamento)) = 'DPTO ADMON Y FINANCIERO';

UPDATE retirado
SET departamento = 'DIRECCION DE ASUNTOS CORPORATIVOS'
WHERE UPPER(TRIM(area)) = 'ACCIONISTAS'
  AND UPPER(TRIM(departamento)) = 'DPTO ADMON Y FINANCIERO';

COMMIT;

-- Verificación rápida
SELECT d.nombre AS departamento, a.nombre AS area
FROM area a
JOIN departamento d ON d.id = a.departamento_id
WHERE a.nombre IN ('AMBIENTAL', 'PTAP', 'PTAR', 'PLANEACION FINANCIERA', 'CONTROLLER', 'ACCIONISTAS')
ORDER BY d.nombre, a.nombre;
