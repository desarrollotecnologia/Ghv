-- Obligar cambio de contraseña: al entrar por primera vez con la estándar (o tras restablecer desde admin)
-- el usuario debe definir su clave personal. Admin puede restablecer a la estándar (Colbeef2026*).

USE gestio_humana;

ALTER TABLE usuario
ADD COLUMN debe_cambiar_clave TINYINT(1) NOT NULL DEFAULT 0
COMMENT '1 = debe cambiar contraseña al próximo inicio de sesión (clave estándar o primera vez)';

-- Opcional: marcar usuarios existentes que quieras forzar a cambiar (ej. si usan clave estándar)
-- UPDATE usuario SET debe_cambiar_clave = 1 WHERE 1=1;
