-- Perfil ANALISTA TIC para ALMEIDA JAIMES (1095838237)
USE gestio_humana;

START TRANSACTION;

INSERT INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados)
SELECT 'e8f1a2b3', a.id, 'ANALISTA TIC', NULL
FROM area a
JOIN departamento d ON a.departamento_id = d.id
WHERE a.nombre = 'TECNOLOGIA'
  AND d.nombre IN ('DPTO JURIDICO Y GESTION HUMANA', 'DPTO ADMON Y FINANCIERO')
  AND NOT EXISTS (
      SELECT 1 FROM perfil_ocupacional p
      WHERE UPPER(TRIM(p.perfil_ocupacional)) = 'ANALISTA TIC'
        AND p.area_id = a.id
  )
LIMIT 1;

UPDATE empleado
SET id_perfil_ocupacional = (
    SELECT p.id_perfil FROM perfil_ocupacional p
    JOIN area a ON p.area_id = a.id
    WHERE UPPER(TRIM(p.perfil_ocupacional)) = 'ANALISTA TIC'
      AND UPPER(TRIM(a.nombre)) = 'TECNOLOGIA'
    ORDER BY p.id_perfil
    LIMIT 1
)
WHERE id_cedula = '1095838237';

SELECT e.id_cedula, e.apellidos_nombre, e.area, p.perfil_ocupacional
FROM empleado e
LEFT JOIN perfil_ocupacional p ON TRIM(p.id_perfil) = TRIM(e.id_perfil_ocupacional)
WHERE e.id_cedula = '1095838237';

COMMIT;
