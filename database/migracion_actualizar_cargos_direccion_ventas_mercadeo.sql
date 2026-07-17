-- ============================================================
-- MIGRACION: Actualizar cargos solicitados por GH
-- - GOMEZ MARTINEZ NIDIA ROCIO      -> DIRECTOR DE ASUNTOS CORPORATIVOS
-- - MARIA FILOMENA*                 -> DIRECTOR PLANTA
-- - DIAZ HOGUERA LUIS FERNANDO      -> JEFE DE VENTAS
-- - MUÑOZ PAOLA ANDREA              -> COORDINADOR DE MERCADEO
--
-- Crea el cargo en perfil_ocupacional si no existe en el área
-- actual del empleado y luego asigna id_perfil_ocupacional.
-- ============================================================

USE gestio_humana;

START TRANSACTION;

DROP TEMPORARY TABLE IF EXISTS tmp_cambios_cargo;
CREATE TEMPORARY TABLE tmp_cambios_cargo (
  id_cedula VARCHAR(50) COLLATE utf8mb4_unicode_ci PRIMARY KEY,
  cargo_objetivo VARCHAR(200) COLLATE utf8mb4_unicode_ci NOT NULL
);

-- Nidia Rocio (con cédula confirmada)
INSERT IGNORE INTO tmp_cambios_cargo (id_cedula, cargo_objetivo)
SELECT '37747995', 'DIRECTOR DE ASUNTOS CORPORATIVOS';

-- Maria Filomena (por nombre)
INSERT IGNORE INTO tmp_cambios_cargo (id_cedula, cargo_objetivo)
SELECT e.id_cedula, 'DIRECTOR PLANTA'
FROM empleado e
WHERE UPPER(TRIM(e.apellidos_nombre)) LIKE '%MARIA%FILOMENA%'
LIMIT 1;

-- Diaz Hoguera Luis Fernando
INSERT IGNORE INTO tmp_cambios_cargo (id_cedula, cargo_objetivo)
SELECT e.id_cedula, 'JEFE DE VENTAS'
FROM empleado e
WHERE UPPER(TRIM(e.apellidos_nombre)) LIKE '%DIAZ%HOGUERA%LUIS%FERNANDO%'
LIMIT 1;

-- Muñoz Paola Andrea
INSERT IGNORE INTO tmp_cambios_cargo (id_cedula, cargo_objetivo)
SELECT e.id_cedula, 'COORDINADOR DE MERCADEO'
FROM empleado e
WHERE UPPER(TRIM(e.apellidos_nombre)) LIKE '%MUÑOZ%PAOLA%ANDREA%'
   OR UPPER(TRIM(e.apellidos_nombre)) LIKE '%MUNOZ%PAOLA%ANDREA%'
LIMIT 1;

-- Crear perfil faltante por cada empleado en su área/departamento actual
INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT
    SUBSTRING(REPLACE(UUID(), '-', ''), 1, 8),
    a.id,
    t.cargo_objetivo,
    NULL
FROM tmp_cambios_cargo t
JOIN empleado e ON e.id_cedula = t.id_cedula
JOIN area a ON UPPER(TRIM(a.nombre)) = UPPER(TRIM(e.area))
JOIN departamento d ON d.id = a.departamento_id
                   AND UPPER(TRIM(d.nombre)) = UPPER(TRIM(e.departamento))
LEFT JOIN perfil_ocupacional p
       ON p.area_id = a.id
      AND UPPER(TRIM(p.perfil_ocupacional)) = UPPER(TRIM(t.cargo_objetivo))
WHERE p.id_perfil IS NULL;

-- Asignar id_perfil_ocupacional del cargo objetivo
UPDATE empleado e
JOIN tmp_cambios_cargo t ON t.id_cedula = e.id_cedula
JOIN area a ON UPPER(TRIM(a.nombre)) = UPPER(TRIM(e.area))
JOIN departamento d ON d.id = a.departamento_id
                   AND UPPER(TRIM(d.nombre)) = UPPER(TRIM(e.departamento))
JOIN perfil_ocupacional p
  ON p.area_id = a.id
 AND UPPER(TRIM(p.perfil_ocupacional)) = UPPER(TRIM(t.cargo_objetivo))
SET e.id_perfil_ocupacional = p.id_perfil;

COMMIT;

-- Verificación
SELECT
    e.id_cedula,
    e.apellidos_nombre,
    e.departamento,
    e.area,
    p.perfil_ocupacional AS cargo_actual
FROM empleado e
LEFT JOIN perfil_ocupacional p ON p.id_perfil = e.id_perfil_ocupacional
WHERE e.id_cedula IN (SELECT id_cedula FROM tmp_cambios_cargo);
