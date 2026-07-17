-- ============================================================
-- MIGRACION: Eliminar cargos GESTOR DE INFORMACION y GESTOR DE LOGISTICA
-- No hay FK desde empleado/retirado hacia perfil_ocupacional
-- (id_perfil_ocupacional es VARCHAR nullable). Se desliga (NULL)
-- lo enlazado y luego se eliminan los cargos para que desaparezcan
-- de las opciones de cargo.
-- ============================================================

USE gestio_humana;

START TRANSACTION;

-- Desligar empleados/retirados que apuntaban a estos cargos
UPDATE empleado e
JOIN perfil_ocupacional p ON p.id_perfil = e.id_perfil_ocupacional
SET e.id_perfil_ocupacional = NULL
WHERE UPPER(TRIM(p.perfil_ocupacional)) IN ('GESTOR DE INFORMACION','GESTOR DE LOGISTICA');

UPDATE retirado r
JOIN perfil_ocupacional p ON p.id_perfil = r.id_perfil_ocupacional
SET r.id_perfil_ocupacional = NULL
WHERE UPPER(TRIM(p.perfil_ocupacional)) IN ('GESTOR DE INFORMACION','GESTOR DE LOGISTICA');

-- Eliminar los cargos
DELETE FROM perfil_ocupacional
WHERE UPPER(TRIM(perfil_ocupacional)) IN ('GESTOR DE INFORMACION','GESTOR DE LOGISTICA');

COMMIT;

-- Verificacion: no debe devolver filas
SELECT d.nombre AS departamento, a.nombre AS area, p.perfil_ocupacional
FROM perfil_ocupacional p
JOIN area a ON a.id = p.area_id
JOIN departamento d ON d.id = a.departamento_id
WHERE UPPER(TRIM(p.perfil_ocupacional)) IN ('GESTOR DE INFORMACION','GESTOR DE LOGISTICA');
