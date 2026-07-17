-- ============================================================
-- MIGRACION: Eliminar area ACCIONISTAS (DIRECCION DE ASUNTOS CORPORATIVOS)
-- Solo tiene 1 cargo (AUXILIAR DE ACCIONISTAS) con gente inactiva/retirada.
-- Se desliga el id_perfil (NULL) y se borra cargo + area.
-- Los registros de retirados conservan su texto de area (historial).
-- ============================================================

USE gestio_humana;

START TRANSACTION;

SET @area := (
  SELECT a.id FROM area a JOIN departamento d ON d.id=a.departamento_id
  WHERE UPPER(TRIM(a.nombre))='ACCIONISTAS'
    AND UPPER(TRIM(d.nombre))='DIRECCION DE ASUNTOS CORPORATIVOS' LIMIT 1);

-- Desligar perfil de empleados/retirados que apuntaban a cargos de esta area
UPDATE empleado e
JOIN perfil_ocupacional p ON p.id_perfil=e.id_perfil_ocupacional
SET e.id_perfil_ocupacional=NULL
WHERE p.area_id=@area;

UPDATE retirado r
JOIN perfil_ocupacional p ON p.id_perfil=r.id_perfil_ocupacional
SET r.id_perfil_ocupacional=NULL
WHERE p.area_id=@area;

-- Borrar cargos del area y luego el area
DELETE FROM perfil_ocupacional WHERE area_id=@area;
DELETE FROM area WHERE id=@area;

COMMIT;

-- Verificacion: no debe devolver filas
SELECT a.id, d.nombre, a.nombre
FROM area a JOIN departamento d ON d.id=a.departamento_id
WHERE UPPER(TRIM(a.nombre))='ACCIONISTAS';
