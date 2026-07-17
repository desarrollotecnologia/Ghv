-- ============================================================
-- MIGRACION:
-- 1) RUEDA MADERO PAOLA CAROLINA -> DPTO COMERCIAL /
--    DIRECCION DPTO COMERCIAL / LIDER DE VENTAS
-- 2) Asegurar perfiles ocupacionales para CONTROLLER y SST
--    para que aparezcan en selector de perfil.
-- ============================================================

USE gestio_humana;

START TRANSACTION;

-- -----------------------------
-- IDs de departamentos / áreas
-- -----------------------------
SET @dep_comercial := (
    SELECT id FROM departamento WHERE UPPER(TRIM(nombre)) = 'DPTO COMERCIAL' LIMIT 1
);
SET @area_dir_comercial := (
    SELECT a.id
    FROM area a
    JOIN departamento d ON d.id = a.departamento_id
    WHERE UPPER(TRIM(a.nombre)) = 'DIRECCION DPTO COMERCIAL'
      AND UPPER(TRIM(d.nombre)) = 'DPTO COMERCIAL'
    LIMIT 1
);

SET @dep_ops := (
    SELECT id FROM departamento WHERE UPPER(TRIM(nombre)) = 'DPTO DE OPERACIONES' LIMIT 1
);
SET @area_sst := (
    SELECT a.id
    FROM area a
    WHERE UPPER(TRIM(a.nombre)) = 'SST'
    LIMIT 1
);
SET @dep_controller := (
    SELECT id FROM departamento WHERE UPPER(TRIM(nombre)) = 'CONTROLLER' LIMIT 1
);
SET @area_controller := (
    SELECT a.id
    FROM area a
    JOIN departamento d ON d.id = a.departamento_id
    WHERE UPPER(TRIM(a.nombre)) = 'CONTROLLER'
      AND UPPER(TRIM(d.nombre)) = 'CONTROLLER'
    LIMIT 1
);

-- -----------------------------
-- Asegurar área SST en operaciones
-- -----------------------------
INSERT INTO area (departamento_id, nombre)
SELECT @dep_ops, 'SST'
WHERE @dep_ops IS NOT NULL
  AND @area_sst IS NULL;

SET @area_sst := (
    SELECT a.id
    FROM area a
    JOIN departamento d ON d.id = a.departamento_id
    WHERE UPPER(TRIM(a.nombre)) = 'SST'
      AND UPPER(TRIM(d.nombre)) = 'DPTO DE OPERACIONES'
    LIMIT 1
);

-- -----------------------------
-- Asegurar perfiles en CONTROLLER y SST
-- -----------------------------
INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_controller, 'DIRECTOR CONTROLLER', NULL
WHERE @area_controller IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_controller
        AND UPPER(TRIM(perfil_ocupacional)) = 'DIRECTOR CONTROLLER'
  );

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_controller, 'PROFESIONAL CONTROLLER', NULL
WHERE @area_controller IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_controller
        AND UPPER(TRIM(perfil_ocupacional)) = 'PROFESIONAL CONTROLLER'
  );

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_sst, 'LIDER SST', NULL
WHERE @area_sst IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_sst
        AND UPPER(TRIM(perfil_ocupacional)) = 'LIDER SST'
  );

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_sst, 'AUXILIAR SST', NULL
WHERE @area_sst IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_sst
        AND UPPER(TRIM(perfil_ocupacional)) = 'AUXILIAR SST'
  );

-- -----------------------------
-- Paola Carolina Rueda Madero
-- -----------------------------
SET @ced_paola := (
    SELECT e.id_cedula
    FROM empleado e
    WHERE UPPER(TRIM(e.apellidos_nombre)) LIKE '%RUEDA%MADERO%PAOLA%CAROLINA%'
    LIMIT 1
);

-- Crear cargo si falta
INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_dir_comercial, 'LIDER DE VENTAS', NULL
WHERE @area_dir_comercial IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_dir_comercial
        AND UPPER(TRIM(perfil_ocupacional)) = 'LIDER DE VENTAS'
  );

SET @perfil_lider_ventas := (
    SELECT p.id_perfil
    FROM perfil_ocupacional p
    WHERE p.area_id = @area_dir_comercial
      AND UPPER(TRIM(p.perfil_ocupacional)) = 'LIDER DE VENTAS'
    LIMIT 1
);

UPDATE empleado
SET departamento = 'DPTO COMERCIAL',
    area = 'DIRECCION DPTO COMERCIAL',
    id_perfil_ocupacional = @perfil_lider_ventas
WHERE id_cedula = @ced_paola;

COMMIT;

-- Verificación
SELECT
    e.id_cedula,
    e.apellidos_nombre,
    e.departamento,
    e.area,
    p.perfil_ocupacional AS cargo
FROM empleado e
LEFT JOIN perfil_ocupacional p ON p.id_perfil = e.id_perfil_ocupacional
WHERE e.id_cedula = @ced_paola;

SELECT d.nombre AS departamento, a.nombre AS area, COUNT(p.id_perfil) AS perfiles
FROM area a
JOIN departamento d ON d.id = a.departamento_id
LEFT JOIN perfil_ocupacional p ON p.area_id = a.id
WHERE UPPER(TRIM(a.nombre)) IN ('CONTROLLER', 'SST')
GROUP BY d.nombre, a.nombre
ORDER BY d.nombre, a.nombre;
