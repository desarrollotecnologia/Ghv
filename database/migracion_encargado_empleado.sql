-- ============================================================
-- MIGRACION: Encargado / Jefe inmediato por empleado
-- Fecha: 2026-04-18
--
-- Agrega columna id_user_encargado en empleado, referenciando
-- al usuario (jefe/coordinador) que aprueba vacaciones/permisos
-- de ese empleado.
-- ============================================================
USE gestio_humana;

START TRANSACTION;

-- 1) Agregar columna si no existe
SET @col_existe := (
    SELECT COUNT(*) FROM information_schema.COLUMNS
    WHERE TABLE_SCHEMA = DATABASE()
      AND TABLE_NAME   = 'empleado'
      AND COLUMN_NAME  = 'id_user_encargado'
);
SET @sql := IF(@col_existe = 0,
    'ALTER TABLE empleado ADD COLUMN id_user_encargado VARCHAR(20) NULL AFTER parentezco',
    'SELECT "Columna id_user_encargado ya existe" AS info');
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

-- 2) Indice para joins rapidos
SET @idx_existe := (
    SELECT COUNT(*) FROM information_schema.STATISTICS
    WHERE TABLE_SCHEMA = DATABASE()
      AND TABLE_NAME   = 'empleado'
      AND INDEX_NAME   = 'idx_emp_encargado'
);
SET @sql := IF(@idx_existe = 0,
    'CREATE INDEX idx_emp_encargado ON empleado(id_user_encargado)',
    'SELECT "Indice idx_emp_encargado ya existe" AS info');
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

-- 3) FK hacia usuario (ON DELETE SET NULL: si se borra el usuario, empleados quedan sin encargado)
SET @fk_existe := (
    SELECT COUNT(*) FROM information_schema.KEY_COLUMN_USAGE
    WHERE TABLE_SCHEMA = DATABASE()
      AND TABLE_NAME   = 'empleado'
      AND COLUMN_NAME  = 'id_user_encargado'
      AND REFERENCED_TABLE_NAME = 'usuario'
);
SET @sql := IF(@fk_existe = 0,
    'ALTER TABLE empleado ADD CONSTRAINT fk_empleado_encargado
        FOREIGN KEY (id_user_encargado) REFERENCES usuario(id_user)
        ON DELETE SET NULL ON UPDATE CASCADE',
    'SELECT "FK fk_empleado_encargado ya existe" AS info');
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

-- 4) Verificacion
SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()
  AND TABLE_NAME   = 'empleado'
  AND COLUMN_NAME  = 'id_user_encargado';

SELECT CONSTRAINT_NAME, DELETE_RULE, UPDATE_RULE
FROM information_schema.REFERENTIAL_CONSTRAINTS
WHERE CONSTRAINT_SCHEMA = DATABASE()
  AND CONSTRAINT_NAME   = 'fk_empleado_encargado';

COMMIT;

-- ============================================================
-- Como usar la nueva columna (desde la app):
--   * ADMIN y COORD. GH siguen viendo TODAS las solicitudes.
--   * Otros roles (ej. JEFE AREA) solo ven las solicitudes de los
--     empleados cuyo id_user_encargado = su id_user.
--   * Si id_user_encargado es NULL, solo ADMIN/COORD. GH las ve.
-- ============================================================
