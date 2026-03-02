# Validación Backend + Frontend — Gestión Humana Colbeef

Revisión realizada para comprobar que **todo lo que se usa en el proyecto se guarda en la BD** y que no haya datos estáticos donde deba haber consultas.

---

## Resultado general

- **Backend y frontend están alineados:** los formularios envían a las rutas correctas y las rutas hacen `INSERT`/`UPDATE`/`DELETE` en la BD y confirman con `commit`.
- **No hay listas estáticas:** las tablas y listas desplegables se rellenan con datos de la base (empleados, departamentos, áreas, EPS, fondos, roles, etc.).
- **Esquema de BD:** las tablas y columnas usadas en `app.py` existen en `database/schema.sql`.

---

## Módulos verificados (guardan en BD correctamente)

| Módulo | Qué se guarda | Rutas principales |
|--------|----------------|--------------------|
| **Login** | Sesión (no escribe en BD; lee `usuario`) | `POST /login` |
| **Empleados** | Alta, edición, baja, retiro, reactivación | `/personal-activo/nuevo`, `/<id>/editar`, `/<id>/eliminar`, `/<id>/retirar`, `/<id>/reactivar` |
| **Departamentos** | Crear, editar, eliminar | `POST /departamentos/nuevo`, `POST /departamentos/<id>/editar`, `POST /departamentos/<id>/eliminar` |
| **Áreas** | Crear, editar, eliminar | `POST /areas/nueva`, `POST /areas/<id>/editar`, `POST /areas/<id>/eliminar` |
| **Perfil ocupacional** | Crear, editar, eliminar | `POST /perfil/nuevo`, `POST /perfil/<id>/editar`, `POST /perfil/<id>/eliminar` |
| **Familia (hijos)** | Crear, editar, eliminar hijo | `POST /hijo/nuevo`, `POST /hijo/<id>/editar`, `POST /hijo/<id>/eliminar` |
| **Retiro** | Retirar empleado, editar retirado, eliminar retirado | `POST /personal-activo/<id>/retirar`, `POST /retirado/<id>/editar`, `POST /retirado/<id>/eliminar` |
| **Permisos** | Solicitud, aprobar, rechazar | `POST /permisos/solicitar`, `POST /permisos/<id>/aprobar`, `POST /permisos/<id>/rechazar` |
| **EPS** | Crear, editar, eliminar EPS | `POST /view-eps/add`, `POST /view-eps/<name>/editar`, `POST /view-eps/<name>/eliminar` |
| **Fondos** | Crear, editar, eliminar fondo | `POST /view-fondos/add`, `POST /view-fondos/<name>/editar`, `POST /view-fondos/<name>/eliminar` |
| **Admin usuarios** | Crear, editar, activar/desactivar, reset contraseña | `POST /users/nuevo`, `POST /users/<id>/editar`, `POST /users/<id>/toggle-estado`, `POST /users/<id>/reset-password` |
| **Admin catálogos** | Tipo documento, nivel educativo, profesión, motivo retiro | `POST /admin/catalogos/tipo-documento`, `nivel-educativo`, `profesion`, `motivo-retiro` |

Todas las rutas de escritura usan `execute()` (que hace `commit()`).

---

## Módulos solo lectura (correcto)

- **Eventos (cumpleaños / aniversario):** leen de `empleado`; no guardan nada.
- **Reportes / dashboard / export:** leen de `empleado`, `hijo`, `retirado`, etc.; no modifican datos.
- **Home-setting:** lee `menu` de la BD; no hay pantalla para crear/editar menú (solo lectura).

---

## Cambio aplicado

- Se añadió `@module_required("fondos")` a la ruta `POST /view-fondos/add` para que sea coherente con el módulo EPS y el control de acceso por módulo.

---

## Cómo revisar en el futuro

1. **Nueva ruta que guarde datos:** comprobar que use `execute()` (o `get_db()` + `commit()`) y que la tabla/columnas existan en el esquema.
2. **Nueva pantalla con lista/desplegable:** comprobar que los datos vengan de una ruta que haga `query()` a la BD, no de listas fijas en el HTML/JS.
3. **Nuevo formulario:** comprobar que `action` o el fetch apunte a la ruta correcta y que esa ruta lea `request.form` o JSON y persista en BD.

Si quieres CRUD completo para la tabla `menu` (pantalla Home-setting), habría que añadir rutas y formularios para crear/editar/eliminar ítems de menú.
