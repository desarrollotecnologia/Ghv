-- Ejecuta esto en MySQL Workbench para ver por qué no ves "Permisos".

USE gestio_humana;

-- 1) Qué rol tiene cada usuario (tu usuario debe tener rol = 'ADMIN' exactamente)
SELECT id_user, nombre, email, rol FROM usuario ORDER BY id_user;

-- 2) Que exista el módulo 'permisos' para ADMIN
SELECT * FROM rol_modulo WHERE modulo_key = 'permisos';

-- Si en (1) tu usuario no tiene rol = 'ADMIN', actualízalo (cambia el WHERE por tu email o id_user):
-- UPDATE usuario SET rol = 'ADMIN' WHERE email = 'tu_correo@colbeef.com';

-- Si en (2) no sale ninguna fila, ejecuta de nuevo: crear_rol_modulo_y_permisos.sql
