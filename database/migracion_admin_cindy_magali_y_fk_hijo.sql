-- ============================================================
-- MIGRACION: 2026-04-18
--   1) Dar rol ADMIN a MAGALI (US-0003) y CINDY (US-0004)
--   2) Agregar FK CASCADE en tabla hijo -> empleado
-- ============================================================
USE gestio_humana;

START TRANSACTION;

-- ---------- 1. Permisos ADMIN ----------
UPDATE usuario
SET rol       = 'ADMIN',
    acciones  = 'TODOS LOS CAMBIOS',
    estado    = 1
WHERE id_user IN ('US-0003', 'US-0004');

-- Verificacion (informativa)
SELECT id_user, nombre, email, rol, estado, acciones
FROM usuario
WHERE id_user IN ('US-0003', 'US-0004');

-- ---------- 2. FK CASCADE en hijo ----------
-- Dropear FK previa si existiese (ignorar error si no existe)
SET @fk_name = (
    SELECT CONSTRAINT_NAME
    FROM information_schema.KEY_COLUMN_USAGE
    WHERE TABLE_SCHEMA = DATABASE()
      AND TABLE_NAME   = 'hijo'
      AND REFERENCED_TABLE_NAME = 'empleado'
    LIMIT 1
);
SET @sql = IF(@fk_name IS NOT NULL,
              CONCAT('ALTER TABLE hijo DROP FOREIGN KEY ', @fk_name),
              'SELECT "Sin FK previa en hijo" AS info');
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

-- Limpiar hijos huerfanos (si cedula no existe en empleado) para que ADD CONSTRAINT no falle
DELETE h FROM hijo h
LEFT JOIN empleado e ON e.id_cedula = h.id_cedula
WHERE e.id_cedula IS NULL;

-- Agregar FK con ON DELETE CASCADE y ON UPDATE CASCADE
ALTER TABLE hijo
    ADD CONSTRAINT fk_hijo_empleado
    FOREIGN KEY (id_cedula) REFERENCES empleado(id_cedula)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

-- Verificacion
SELECT CONSTRAINT_NAME, DELETE_RULE, UPDATE_RULE
FROM information_schema.REFERENTIAL_CONSTRAINTS
WHERE CONSTRAINT_SCHEMA = DATABASE()
  AND TABLE_NAME        = 'hijo';

COMMIT;

-- ============================================================
-- Nota: el Excel maestro BDatos_APPGH.xlsx sigue teniendo a
--   US-0003 como GESTOR DE CONTRATACION y
--   US-0004 como COORD. GH.
-- Cada vez que vuelvas a correr update_from_xlsx.py / el SQL
-- generado desde el Excel, los roles se van a REVERTIR.
-- Por eso, ADEMAS de este SQL, corrige la hoja 'User' del Excel:
--   US-0003  rol=ADMIN  acciones=TODOS LOS CAMBIOS
--   US-0004  rol=ADMIN  acciones=TODOS LOS CAMBIOS
-- y guarda el Excel.
-- ============================================================
