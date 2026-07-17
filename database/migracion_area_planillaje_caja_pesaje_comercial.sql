-- ============================================================
-- MIGRACION:
-- Crear/ajustar área PLANILLAJE, CAJA Y PESAJE en DPTO COMERCIAL
-- y asignar empleados + cargos + jefe inmediato (Director Comercial)
-- ============================================================

USE gestio_humana;

START TRANSACTION;

-- 1) Asegurar departamento y área
INSERT INTO departamento (nombre)
SELECT 'DPTO COMERCIAL'
WHERE NOT EXISTS (
    SELECT 1 FROM departamento WHERE UPPER(TRIM(nombre)) = 'DPTO COMERCIAL'
);

SET @dep_comercial := (
    SELECT id FROM departamento WHERE UPPER(TRIM(nombre)) = 'DPTO COMERCIAL' LIMIT 1
);

INSERT INTO area (departamento_id, nombre)
SELECT @dep_comercial, 'PLANILLAJE, CAJA Y PESAJE'
WHERE @dep_comercial IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM area
      WHERE UPPER(TRIM(nombre)) = 'PLANILLAJE, CAJA Y PESAJE'
        AND departamento_id = @dep_comercial
  );

SET @area_planillaje := (
    SELECT id
    FROM area
    WHERE UPPER(TRIM(nombre)) = 'PLANILLAJE, CAJA Y PESAJE'
      AND departamento_id = @dep_comercial
    LIMIT 1
);

SET @jefe_comercial := (
    SELECT id_user FROM usuario WHERE LOWER(TRIM(email)) = 'gerencia.comercial@colbeef.com' LIMIT 1
);

-- 2) Asegurar cargos de la nueva área
INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_planillaje, 'AUXILIAR DE PLANILLAJE', NULL
WHERE @area_planillaje IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_planillaje
        AND UPPER(TRIM(perfil_ocupacional)) = 'AUXILIAR DE PLANILLAJE'
  );

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_planillaje, 'LIDER DE PLANILLAJE', NULL
WHERE @area_planillaje IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_planillaje
        AND UPPER(TRIM(perfil_ocupacional)) = 'LIDER DE PLANILLAJE'
  );

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_planillaje, 'AUXILIAR DE CAJA', NULL
WHERE @area_planillaje IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_planillaje
        AND UPPER(TRIM(perfil_ocupacional)) = 'AUXILIAR DE CAJA'
  );

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_planillaje, 'AUXILIAR DE BASCULA', NULL
WHERE @area_planillaje IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_planillaje
        AND UPPER(TRIM(perfil_ocupacional)) = 'AUXILIAR DE BASCULA'
  );

SET @perfil_aux_plan := (
    SELECT id_perfil FROM perfil_ocupacional
    WHERE area_id = @area_planillaje AND UPPER(TRIM(perfil_ocupacional)) = 'AUXILIAR DE PLANILLAJE'
    LIMIT 1
);
SET @perfil_lider_plan := (
    SELECT id_perfil FROM perfil_ocupacional
    WHERE area_id = @area_planillaje AND UPPER(TRIM(perfil_ocupacional)) = 'LIDER DE PLANILLAJE'
    LIMIT 1
);
SET @perfil_aux_caja := (
    SELECT id_perfil FROM perfil_ocupacional
    WHERE area_id = @area_planillaje AND UPPER(TRIM(perfil_ocupacional)) = 'AUXILIAR DE CAJA'
    LIMIT 1
);
SET @perfil_aux_bascula := (
    SELECT id_perfil FROM perfil_ocupacional
    WHERE area_id = @area_planillaje AND UPPER(TRIM(perfil_ocupacional)) = 'AUXILIAR DE BASCULA'
    LIMIT 1
);

-- 3) Tabla temporal de empleados objetivo
DROP TEMPORARY TABLE IF EXISTS tmp_emps_planillaje;
CREATE TEMPORARY TABLE tmp_emps_planillaje (
  nombre_like VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  perfil_id VARCHAR(50) COLLATE utf8mb4_unicode_ci NULL
);

INSERT INTO tmp_emps_planillaje (nombre_like, perfil_id) VALUES
('%ALVAREZ%ARVELO%ROKY%DAVID%', @perfil_aux_plan),
('%BERNAL%LOPEZ%ANDREA%ELIANA%', @perfil_aux_plan),
('%CONDE%VILLAMIZAR%YENNIFER%ROCIO%', @perfil_aux_plan),
('%LIZARAZO%PARADA%DIEGO%FERNANDO%', @perfil_lider_plan),
('%MANTILLA%SIZA%MICHEL%ARMANDO%', @perfil_aux_caja),
('%RUEDA%RIOS%YELITZA%TATIANA%', @perfil_aux_bascula);

-- 4) Aplicar actualización de depto/área/cargo/jefe
UPDATE empleado e
JOIN tmp_emps_planillaje t
  ON UPPER(TRIM(e.apellidos_nombre)) LIKE t.nombre_like
SET e.departamento = 'DPTO COMERCIAL',
    e.area = 'PLANILLAJE, CAJA Y PESAJE',
    e.id_perfil_ocupacional = COALESCE(t.perfil_id, e.id_perfil_ocupacional),
    e.id_user_encargado = COALESCE(@jefe_comercial, e.id_user_encargado);

COMMIT;

-- Verificación
SELECT
    e.id_cedula,
    e.apellidos_nombre,
    e.departamento,
    e.area,
    p.perfil_ocupacional AS cargo,
    u.email AS jefe_inmediato
FROM empleado e
LEFT JOIN perfil_ocupacional p ON p.id_perfil = e.id_perfil_ocupacional
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE UPPER(TRIM(e.apellidos_nombre)) LIKE '%ALVAREZ%ARVELO%ROKY%DAVID%'
   OR UPPER(TRIM(e.apellidos_nombre)) LIKE '%BERNAL%LOPEZ%ANDREA%ELIANA%'
   OR UPPER(TRIM(e.apellidos_nombre)) LIKE '%CONDE%VILLAMIZAR%YENNIFER%ROCIO%'
   OR UPPER(TRIM(e.apellidos_nombre)) LIKE '%LIZARAZO%PARADA%DIEGO%FERNANDO%'
   OR UPPER(TRIM(e.apellidos_nombre)) LIKE '%MANTILLA%SIZA%MICHEL%ARMANDO%'
   OR UPPER(TRIM(e.apellidos_nombre)) LIKE '%RUEDA%RIOS%YELITZA%TATIANA%';
