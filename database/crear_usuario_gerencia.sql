-- Crear usuario de MySQL y usuario de aplicación para Gerencia.
-- Ejecutar con un usuario root/admin de MySQL.

USE gestio_humana;

-- 1) Usuario de MySQL (motor)
CREATE USER IF NOT EXISTS 'gerencia'@'localhost' IDENTIFIED BY 'gerencia2026*';
GRANT ALL PRIVILEGES ON gestio_humana.* TO 'gerencia'@'localhost';
FLUSH PRIVILEGES;

-- 2) Usuario de la app (tabla usuario) con rol ADMIN
-- Nota: el login de la app para no-empleados es por correo (email), no por username simple.
-- Por eso se crea el email gerencia@colbeef.com
INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones)
VALUES (
    'US-GERENCIA',
    'gerencia@colbeef.com',
    'scrypt:32768:8:1$OovRymWRLs83kEgp$a43f044c4cba3059ca43abc4cdf840a4e1b089ca765a042dce006ef40406d528e1324f1052dc0bae341dfcc4df165dd6cb07ba42606a503d4263b3d22a39a5bc',
    'GERENCIA',
    'ADMIN',
    1,
    'TODOS LOS CAMBIOS'
)
ON DUPLICATE KEY UPDATE
    password_hash = VALUES(password_hash),
    nombre = VALUES(nombre),
    rol = 'ADMIN',
    estado = 1,
    acciones = 'TODOS LOS CAMBIOS';

-- Verificación rápida:
-- SELECT id_user, email, rol, estado FROM usuario WHERE email = 'gerencia@colbeef.com';
-- SELECT user, host FROM mysql.user WHERE user = 'gerencia';
