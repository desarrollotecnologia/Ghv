-- ============================================================
-- RESET GLOBAL DE CLAVES A ESTANDAR
-- Fecha: 2026-04-29
-- Clave estandar: Colbeef2026*
-- ============================================================
USE gestio_humana;

START TRANSACTION;

-- Hash generado con werkzeug.security.generate_password_hash("Colbeef2026*")
SET @HASH_ESTANDAR = 'scrypt:32768:8:1$yvOKdBrftwQH01iO$939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89';

-- Opcion recomendada: todos los usuarios activos
UPDATE usuario
SET password_hash = @HASH_ESTANDAR,
    debe_cambiar_clave = 1
WHERE estado = 1;

-- Si prefieres incluir tambien inactivos, usa este bloque en lugar del UPDATE anterior:
-- UPDATE usuario
-- SET password_hash = @HASH_ESTANDAR,
--     debe_cambiar_clave = 1;

-- Verificacion rapida
SELECT
    COUNT(*) AS total_activos_reseteados
FROM usuario
WHERE estado = 1
  AND password_hash = @HASH_ESTANDAR;

COMMIT;

-- Nota:
-- Si tu BD no tiene la columna debe_cambiar_clave, ejecuta:
-- UPDATE usuario SET password_hash = @HASH_ESTANDAR WHERE estado = 1;
