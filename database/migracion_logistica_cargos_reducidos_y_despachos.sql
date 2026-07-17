-- ============================================================
-- MIGRACION:
-- LOGISTICA (DPTO DE OPERACIONES)
-- - Dejar solo cargos:
--   * AUXILIAR DE LOGISTICA
--   * LIDER LOGISTICA
--   * SUPERVISOR LOGISTICA
--   * AUXILIAR DE DESPACHOS (nuevo)
-- - Asignar AUXILIAR DE DESPACHOS a:
--   * MORENO JIMENEZ YUSELLY
--   * QUIÑONEZ ARENAS SHARON TATIANA
-- ============================================================

USE gestio_humana;

START TRANSACTION;

-- 1) Resolver área LOGISTICA en operaciones
SET @area_logistica := (
    SELECT a.id
    FROM area a
    JOIN departamento d ON d.id = a.departamento_id
    WHERE UPPER(TRIM(a.nombre)) = 'LOGISTICA'
      AND UPPER(TRIM(d.nombre)) = 'DPTO DE OPERACIONES'
    LIMIT 1
);

-- 2) Asegurar cargos permitidos
INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_logistica, 'AUXILIAR DE LOGISTICA', NULL
WHERE @area_logistica IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_logistica
        AND UPPER(TRIM(perfil_ocupacional)) = 'AUXILIAR DE LOGISTICA'
  );

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_logistica, 'LIDER LOGISTICA', NULL
WHERE @area_logistica IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_logistica
        AND UPPER(TRIM(perfil_ocupacional)) = 'LIDER LOGISTICA'
  );

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_logistica, 'SUPERVISOR LOGISTICA', NULL
WHERE @area_logistica IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_logistica
        AND UPPER(TRIM(perfil_ocupacional)) = 'SUPERVISOR LOGISTICA'
  );

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_logistica, 'AUXILIAR DE DESPACHOS', NULL
WHERE @area_logistica IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_logistica
        AND UPPER(TRIM(perfil_ocupacional)) = 'AUXILIAR DE DESPACHOS'
  );

SET @perfil_aux_log := (
    SELECT id_perfil
    FROM perfil_ocupacional
    WHERE area_id = @area_logistica
      AND UPPER(TRIM(perfil_ocupacional)) = 'AUXILIAR DE LOGISTICA'
    LIMIT 1
);

SET @perfil_aux_desp := (
    SELECT id_perfil
    FROM perfil_ocupacional
    WHERE area_id = @area_logistica
      AND UPPER(TRIM(perfil_ocupacional)) = 'AUXILIAR DE DESPACHOS'
    LIMIT 1
);

-- 3) Asignar AUXILIAR DE DESPACHOS a las dos personas indicadas
UPDATE empleado
SET departamento = 'DPTO DE OPERACIONES',
    area = 'LOGISTICA',
    id_perfil_ocupacional = @perfil_aux_desp
WHERE @perfil_aux_desp IS NOT NULL
  AND (
      UPPER(TRIM(apellidos_nombre)) LIKE '%MORENO%JIMENEZ%YUSELLY%'
      OR UPPER(TRIM(apellidos_nombre)) LIKE '%QUIÑONEZ%ARENAS%SHARON%TATIANA%'
      OR UPPER(TRIM(apellidos_nombre)) LIKE '%QUINONEZ%ARENAS%SHARON%TATIANA%'
  );

-- 4) Reasignar perfiles no permitidos de logística al perfil base AUXILIAR DE LOGISTICA
UPDATE empleado e
LEFT JOIN perfil_ocupacional p ON p.id_perfil = e.id_perfil_ocupacional
SET e.id_perfil_ocupacional = @perfil_aux_log
WHERE @perfil_aux_log IS NOT NULL
  AND UPPER(TRIM(e.departamento)) = 'DPTO DE OPERACIONES'
  AND UPPER(TRIM(e.area)) = 'LOGISTICA'
  AND (
      p.id_perfil IS NULL
      OR UPPER(TRIM(p.perfil_ocupacional)) NOT IN (
          'AUXILIAR DE LOGISTICA',
          'LIDER LOGISTICA',
          'SUPERVISOR LOGISTICA',
          'AUXILIAR DE DESPACHOS'
      )
  );

-- 5) Eliminar perfiles sobrantes en esa área para limpiar el desplegable
DELETE p
FROM perfil_ocupacional p
WHERE p.area_id = @area_logistica
  AND UPPER(TRIM(p.perfil_ocupacional)) NOT IN (
      'AUXILIAR DE LOGISTICA',
      'LIDER LOGISTICA',
      'SUPERVISOR LOGISTICA',
      'AUXILIAR DE DESPACHOS'
  );

COMMIT;

-- Verificación
SELECT p.id_perfil, p.perfil_ocupacional
FROM perfil_ocupacional p
WHERE p.area_id = @area_logistica
ORDER BY p.perfil_ocupacional;

SELECT e.id_cedula, e.apellidos_nombre, e.departamento, e.area, p.perfil_ocupacional AS cargo
FROM empleado e
LEFT JOIN perfil_ocupacional p ON p.id_perfil = e.id_perfil_ocupacional
WHERE UPPER(TRIM(e.apellidos_nombre)) LIKE '%MORENO%JIMENEZ%YUSELLY%'
   OR UPPER(TRIM(e.apellidos_nombre)) LIKE '%QUIÑONEZ%ARENAS%SHARON%TATIANA%'
   OR UPPER(TRIM(e.apellidos_nombre)) LIKE '%QUINONEZ%ARENAS%SHARON%TATIANA%';
