-- ============================================================
-- MIGRACION: Agregar cargo SUPERNUMERARIO en GESTION HUMANA
-- ============================================================

USE gestio_humana;

START TRANSACTION;

-- Prioriza GESTION HUMANA bajo DPTO ADMON Y FINANCIERO.
SET @area_gh := (
    SELECT a.id
    FROM area a
    JOIN departamento d ON d.id = a.departamento_id
    WHERE UPPER(TRIM(a.nombre)) = 'GESTION HUMANA'
      AND UPPER(TRIM(d.nombre)) = 'DPTO ADMON Y FINANCIERO'
    LIMIT 1
);

-- Si no existe en ese dpto, usa cualquier GESTION HUMANA disponible.
SET @area_gh := COALESCE(
    @area_gh,
    (SELECT id FROM area WHERE UPPER(TRIM(nombre)) = 'GESTION HUMANA' LIMIT 1)
);

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8), @area_gh, 'SUPERNUMERARIO', NULL
WHERE @area_gh IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional
      WHERE area_id = @area_gh
        AND UPPER(TRIM(perfil_ocupacional)) = 'SUPERNUMERARIO'
  );

COMMIT;

-- Verificación
SELECT
    p.id_perfil,
    p.perfil_ocupacional,
    a.nombre AS area,
    d.nombre AS departamento
FROM perfil_ocupacional p
JOIN area a ON a.id = p.area_id
JOIN departamento d ON d.id = a.departamento_id
WHERE UPPER(TRIM(a.nombre)) = 'GESTION HUMANA'
  AND UPPER(TRIM(p.perfil_ocupacional)) = 'SUPERNUMERARIO';
