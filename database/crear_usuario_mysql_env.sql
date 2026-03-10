-- Crear el usuario MySQL que usa la app (según .env).
-- Ejecutar como usuario root en MySQL (Workbench o consola).
-- Usuario: gh_admin  |  Base de datos: gestio_humana

-- 1) Crear usuario (host localhost para conexiones locales)
CREATE USER IF NOT EXISTS 'gh_admin'@'localhost' IDENTIFIED BY 'GH_2026$ecure';

-- 2) Dar permisos sobre la base de datos de la app
GRANT ALL PRIVILEGES ON gestio_humana.* TO 'gh_admin'@'localhost';

-- 3) Aplicar cambios
FLUSH PRIVILEGES;

-- Verificar (opcional):
-- SELECT user, host FROM mysql.user WHERE user = 'gh_admin';
