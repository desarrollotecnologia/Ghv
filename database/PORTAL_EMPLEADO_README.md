# Portal del Empleado

El empleado puede **ya estar dado de alta** (cuando el Gestor crea el empleado) o **registrarse él mismo**. Contraseña inicial para los creados por Gestor o por el script: **Colbeef2026***. Pueden cambiarla al ingresar al portal.

## 1. Ejecutar migración (una vez)

En MySQL Workbench, sobre la BD `gestio_humana`:

```sql
-- Ejecutar: database/migration_portal_empleado.sql
```

Eso agrega la columna `id_cedula` en `usuario` y el rol `EMPLEADO` con acceso al módulo Permisos.

## 2. Empleados que ya están en la BD (creados por Gestor o importados)

- **Cuando el Gestor de Contratación agrega un empleado nuevo** (Personal Activo → Nuevo), se crea automáticamente el usuario para el portal con contraseña **Colbeef2026***. El Gestor ve en el mensaje el correo asignado (el del formulario o uno por defecto).
- **Para empleados que ya estaban en la BD antes de este módulo:** ejecutar una vez:
  ```bash
  python database/crear_usuarios_empleados_bd.py
  ```
  Eso crea un usuario (EMP-{cédula}) para cada empleado activo que aún no tenga, con contraseña **Colbeef2026***.

Esos empleados **no se tienen que registrar**: inician sesión con su correo (el de su ficha o el asignado) y la contraseña **Colbeef2026***. Al entrar al portal pueden ir a **Cambiar contraseña** y poner una propia.

## 3. Empleado que se registra él mismo

1. Entra a **Iniciar sesión** → **"Registrarse aquí"** (o `/empleado/registro`).
2. Si **ya tiene usuario** (porque el Gestor lo dio de alta o se ejecutó el script): se le indica *"Ya está registrado. Inicie sesión con el correo [X] y la contraseña inicial: Colbeef2026*"* y se redirige al login.
3. Si **no tiene usuario**: completa cédula, correo y contraseña; se crea la cuenta y se guarda su correo en la ficha del empleado.
4. **Inicio de sesión:** correo + contraseña. Si el rol es EMPLEADO, se redirige al **Portal del Empleado**.
5. En el portal: **Solicitud de permiso**, **Mis solicitudes** y **Cambiar contraseña**.

## 4. Gestor y Coordinación

- **Gestor de Contratación** y **Coordinación GH** siguen entrando por el login normal y viendo el listado de solicitudes en **Solicitud de permiso** (aprobar/rechazar).
- Las solicitudes creadas por el empleado desde su portal aparecen ahí y se notifica por correo como antes.

## 5. URLs

| Ruta | Quién |
|------|--------|
| `/empleado/registro` | Pública (formulario de registro) |
| `/empleado` | Empleado logueado (portal) |
| `/empleado/mis-solicitudes` | Empleado logueado |
| `/permisos/solicitar` | Empleado (solo sus datos) o staff (selector de empleado) |
| `/permisos` | Coordinación / quien pueda aprobar (listado) |
