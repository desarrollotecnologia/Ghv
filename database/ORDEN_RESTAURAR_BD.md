# Orden para restaurar la BD (cuando se borró todo)

Ejecutar **en este orden** desde MySQL Workbench (y un comando en terminal para contraseñas).

---

## 1. `crear_bd_completo.sql`

- **Parte 1:** Conéctate como **root**. Ejecuta solo las líneas de crear BD y usuario (CREATE DATABASE, CREATE USER, GRANT, FLUSH PRIVILEGES). Si da error en GRANT, ejecuta esa parte en otra pestaña.
- **Parte 2:** Ejecuta todo lo demás (desde `USE gestio_humana;` hasta el final). Crea todas las tablas (rol, tipo_documento, empleado, hijo, retirado, solicitud_permiso, rol_permiso, rol_modulo, etc.) e inserta catálogos (roles, EPS, fondos, departamentos, áreas, menú, usuarios, profesiones, perfiles, permisos por rol).

Con esto ya tienes la base creada, estructura completa y datos de catálogos.

---

## 2. `datos_insertar.sql`

- Abre el archivo en Workbench, selecciona todo (Ctrl+A) y ejecuta.
- Carga los datos de tus CSV: departamento (por si faltara), **empleado**, **hijo**, **retirado** (y si lo generaste con todos los CSV, también otros catálogos). Usa `INSERT IGNORE`, así que no rompe si algo ya existe.

---

## 3. `sincronizar_roles_y_usuarios.sql`

- Corrige el rol de algunos usuarios (US-0003, US-0006, etc.) y deja el módulo **Permisos** visible para todos los roles.
- Si sale *"Table rol_modulo doesn't exist"*, antes ejecuta `crear_rol_modulo_y_permisos.sql`; con el paso 1 no debería pasar.

---

## 4. Contraseñas de usuarios (terminal)

Desde la **raíz del proyecto** (donde está `.env`):

```bash
python database/seed_passwords.py
```

- Pone contraseña hasheada a todos los usuarios de la tabla `usuario` (por defecto `Colbeef2026*`). Sin esto no podrás iniciar sesión en la app.

---

## 5. (Opcional) Ajustes puntuales

- **actualizar_nombre_usuario_0010.sql** — Si quieres que el usuario US-0010 (tecnologia@colbeef.com) se llame "JOHAN PINTO".
- **corregir_rol_admin.sql** — Si el rol de US-0010 se ve mal (ej. "ADMIN,10") y el menú Permisos no aparece.

---

## No ejecutar (redundante si usaste el orden anterior)

- **migration_rol_bd.sql** — Ya incluido en `crear_bd_completo.sql`.
- **crear_rol_modulo_y_permisos.sql** — Ya incluido en `crear_bd_completo.sql` (solo si falla `rol_modulo` en el paso 3).
- **migration_solicitud_permiso.sql** — La tabla ya está en `crear_bd_completo.sql`.
- **migration_permiso_formato_gh_fr_007.sql** — Las columnas ya están en `crear_bd_completo.sql`.
- **migration_correo_resolucion_validar.sql** — Las columnas ya están en `crear_bd_completo.sql`.
- **migration_auth.sql** — La columna `password_hash` ya está en `crear_bd_completo.sql`.
- **schema.sql** — Alternativa a `crear_bd_completo` (misma estructura); no hace falta si ejecutaste `crear_bd_completo`.
- **insertar_usuarios.sql** — Los usuarios ya se insertan en `crear_bd_completo`; no hace falta salvo que quieras reemplazar/duplicar con otro listado.

---

## Resumen rápido

| Paso | Qué ejecutar | Dónde |
|------|----------------|-------|
| 1 | `crear_bd_completo.sql` (Parte 1 como root, Parte 2 completa) | MySQL Workbench |
| 2 | `datos_insertar.sql` | MySQL Workbench |
| 3 | `sincronizar_roles_y_usuarios.sql` | MySQL Workbench |
| 4 | `python database/seed_passwords.py` | Terminal (raíz del proyecto) |
| 5 | Opcional: `actualizar_nombre_usuario_0010.sql`, `corregir_rol_admin.sql` | MySQL Workbench |

Después de esto la BD está lista para usar la aplicación.
