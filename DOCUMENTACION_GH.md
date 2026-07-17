# Documentación Técnica — Sistema de Gestión Humana Colbeef

> Documentación integral del código, la arquitectura, los lenguajes y la lógica de negocio del sistema de Gestión Humana (RRHH) de Colbeef.
>
> Autor de referencia técnica: equipo de Tecnología Colbeef · Versión del documento: 1.0

---

## Tabla de contenido

1. [Resumen ejecutivo](#1-resumen-ejecutivo)
2. [Lenguajes y stack tecnológico](#2-lenguajes-y-stack-tecnológico)
3. [Arquitectura general](#3-arquitectura-general)
4. [Estructura del proyecto](#4-estructura-del-proyecto)
5. [Configuración y variables de entorno](#5-configuración-y-variables-de-entorno)
6. [Modelo de datos (base de datos)](#6-modelo-de-datos-base-de-datos)
7. [Autenticación, sesión y seguridad](#7-autenticación-sesión-y-seguridad)
8. [Roles, módulos y control de acceso](#8-roles-módulos-y-control-de-acceso)
9. [Módulos funcionales](#9-módulos-funcionales)
10. [Flujos de solicitudes (permiso, vacaciones, incapacidad)](#10-flujos-de-solicitudes)
11. [Lógica de negocio destacada](#11-lógica-de-negocio-destacada)
12. [Sistema de correo (mail_utils)](#12-sistema-de-correo-mail_utils)
13. [Generación de PDF](#13-generación-de-pdf)
14. [Sincronización del directorio organizacional](#14-sincronización-del-directorio-organizacional)
15. [Capa de presentación (frontend)](#15-capa-de-presentación-frontend)
16. [Referencia de rutas (endpoints)](#16-referencia-de-rutas-endpoints)
17. [Despliegue y ejecución](#17-despliegue-y-ejecución)
18. [Convenciones y notas de mantenimiento (nivel senior)](#18-convenciones-y-notas-de-mantenimiento)

---

## 1. Resumen ejecutivo

El **Sistema de Gestión Humana Colbeef** es una aplicación web monolítica construida sobre **Python + Flask** con persistencia en **MySQL**. Centraliza la administración del talento humano de la planta y las áreas administrativas:

- **Maestro de personal** (activos, inactivos/retirados, hijos, EPS, fondos de pensión).
- **Estructura organizacional** (departamentos → áreas → perfiles ocupacionales) y directorio de jefes inmediatos.
- **Autogestión del empleado**: portal para solicitar **permisos/licencias**, **vacaciones** e **incapacidades** con flujo de aprobación por el jefe inmediato y notificación a Gestión Humana.
- **Seguridad y Salud en el Trabajo (SST)**: registro y análisis de **incidencias/accidentes** (INATEL) y tablero de **incapacitados**.
- **Eventos**: cumpleaños y aniversarios laborales.
- **Reportería**: dashboards, exportaciones a Excel/PDF y estadísticas de ingreso al sistema (auditoría).
- **Administración**: usuarios, roles/módulos, catálogos y configuración.

Características transversales:
- Notificaciones por **correo electrónico (SMTP)** con plantillas HTML corporativas.
- **Aprobación/rechazo por enlace en el correo** mediante *tokens* firmados (sin iniciar sesión).
- Generación de **PDF del formato GH-FR-007** con firma digital superpuesta.
- **Auditoría** de ingresos y acciones sensibles (`audit_log`).

---

## 2. Lenguajes y stack tecnológico

| Capa | Tecnología | Uso principal |
|------|------------|---------------|
| Backend | **Python 3.10+** | Lógica de negocio, rutas HTTP |
| Framework web | **Flask 3.1** | Enrutamiento, sesiones, plantillas |
| Plantillas | **Jinja2** (incluido en Flask) | Renderizado HTML del lado del servidor (SSR) |
| Base de datos | **MySQL 5.7 / 8.x** | Persistencia relacional (InnoDB, utf8mb4) |
| Driver BD | **mysql-connector-python 9.2** | Conexión y consultas parametrizadas |
| Servidor WSGI | **Waitress 3.0** | Servidor de producción (Windows/LAN) |
| Correo | **smtplib + email** (stdlib) | Envío SMTP (SSL/STARTTLS) |
| PDF | **reportlab** + **pypdf** | Genera y estampa el formato de permiso |
| Imágenes | **Pillow (PIL)** | Procesa firma e imágenes en PDF/avatares |
| Excel | **openpyxl 3.1** | Import/export de datos y directorio |
| PPTX | **python-pptx** | Genera presentación institucional |
| Config | **python-dotenv 1.1** | Carga de variables desde `.env` / `.env.local` |
| Frontend | **HTML5, CSS3, JavaScript (vanilla)** | UI responsiva, sin framework SPA |
| Tipografías/iconos | Google Fonts (**Inter**), **Material Symbols** | Identidad visual |
| Túnel/pruebas | **ngrok** | Exposición temporal a Internet |

**Principio de diseño:** dependencias mínimas, sin ORM ni framework de frontend. Se usan capas delgadas (`query()`/`execute()`) sobre el conector MySQL y renderizado en servidor con Jinja2. Esto reduce la superficie de mantenimiento a costa de escribir SQL explícito.

---

## 3. Arquitectura general

```
┌──────────────────────────────────────────────────────────────┐
│                        Navegador (cliente)                     │
│  HTML + CSS (style.css, mobile.css) + JS vanilla (app.js)      │
└───────────────▲───────────────────────────────┬───────────────┘
                │ HTML SSR (Jinja2)              │ HTTP (form-data / JSON)
                │                                ▼
┌──────────────────────────────────────────────────────────────┐
│                      Flask (app.py, ~9.6k líneas)              │
│                                                                │
│  ┌────────────┐  ┌───────────────┐  ┌───────────────────────┐ │
│  │  Hooks:    │  │  Decoradores  │  │  ~150 rutas @app.route │ │
│  │ before_req │  │ login_required│  │  (módulos funcionales) │ │
│  │ ctx_proc.  │  │ role_required │  │                        │ │
│  └────────────┘  │ module_required│ └───────────────────────┘ │
│                  └───────────────┘                             │
│  Helpers de dominio: cálculo de días, tokens de correo,        │
│  sincronización de estado empleado/usuario, auditoría.         │
└───┬───────────────┬───────────────┬───────────────┬───────────┘
    │ query/execute │ send_mail      │ PDF           │ directorio
    ▼               ▼                ▼               ▼
┌────────┐   ┌────────────┐  ┌───────────────┐  ┌──────────────────┐
│ MySQL  │   │ mail_utils │  │ pdf_informe_  │  │ directorio_       │
│(InnoDB)│   │  (SMTP)    │  │ permiso.py    │  │ colbeef.py (xlsx) │
└────────┘   └────────────┘  │ pdf_firma.py  │  └──────────────────┘
                             └───────────────┘
```

**Patrón:** monolito modular. Toda la lógica de rutas vive en `app.py`; los servicios transversales están extraídos a módulos independientes (`mail_utils.py`, `pdf_*.py`, `directorio_colbeef.py`, `config.py`). No hay *blueprints* de Flask: la separación es lógica (por prefijo de ruta y decoradores), no física.

**Ciclo de vida de una petición:**
1. `@app.before_request` ejecuta, en orden: bootstrap de auditoría, control de timeout de sesión, verificación de empleado activo y bloqueo de módulos desactivados.
2. El decorador de la ruta (`login_required` / `role_required` / `module_required`) valida acceso.
3. La vista consulta MySQL con `query()`/`execute()`, aplica reglas de negocio y renderiza una plantilla Jinja2 o devuelve JSON.
4. `@app.context_processor inject_user()` inyecta en todas las plantillas el usuario actual y el mapa de módulos visibles.

---

## 4. Estructura del proyecto

```
app_ghv/
├── app.py                      # Núcleo Flask: rutas, hooks, decoradores, lógica de negocio
├── config.py                   # Clase Config: lee .env (MySQL, SMTP, flags)
├── run.py                      # Arranque en producción con Waitress
├── mail_utils.py               # Envío SMTP + plantillas HTML + notificaciones de dominio
├── pdf_informe_permiso.py      # Genera el PDF del formato GH-FR-007
├── pdf_firma.py                # Estampa la firma digital sobre un PDF existente
├── directorio_colbeef.py       # Carga y aplica el directorio (jefes inmediatos) desde Excel
├── requirements.txt            # Dependencias Python
├── iniciar_app.bat             # Lanzador para Windows
├── .env / .env.local           # Variables de entorno (no versionar secretos)
│
├── database/                   # SQL + utilidades de datos
│   ├── schema.sql              # Esquema base + catálogos + seeds
│   ├── crear_bd_completo.sql   # Script "todo en uno" (BD, usuario, tablas)
│   ├── migration_*.sql         # Migraciones incrementales (columnas/tablas nuevas)
│   ├── migracion_*.sql         # Migraciones de datos (jefes, áreas, encargados)
│   ├── vincular_*.sql          # Vinculación empleado ↔ usuario ↔ jefe
│   ├── verificar_*.sql         # Consultas de verificación/QA
│   ├── *.py                    # Importadores/generadores (openpyxl, csv)
│   ├── Directorio_Colbeef.xlsx # Fuente del directorio organizacional
│   └── cie10-obj.json          # Catálogo CIE-10 para incapacidades
│
├── templates/                  # Vistas Jinja2 (~80 archivos .html)
│   ├── base.html               # Layout principal (topbar, sidebar, perfil)
│   ├── base_empleado.html      # Layout del portal del empleado
│   ├── login.html, home.html   # Acceso y suite principal
│   ├── permiso_*.html          # Solicitud/edición/aprobación de permisos
│   ├── vacaciones_*.html       # Solicitud/listado de vacaciones
│   ├── incapacidad_*.html      # Solicitud/listado de incapacidades
│   ├── incidencias_*.html      # SST / INATEL
│   ├── *_email_action.html     # Confirmación de aprobación desde el correo
│   └── data_table.html, detail.html, dashboard*.html ...
│
├── static/
│   ├── css/style.css           # Estilos de escritorio
│   ├── css/mobile.css          # Estilos responsivos
│   ├── js/app.js               # Interacción cliente (búsqueda, dropdowns, live)
│   ├── js/calendar.js          # Utilidades de calendario
│   ├── img/                    # Logos e imágenes
│   ├── avatars/                # Fotos de perfil de usuarios
│   └── firmas/                 # Firmas digitales
│
├── instance/uploads/permisos/  # Evidencias PDF adjuntas por empleados
├── docs/                       # Documentación complementaria
└── scripts/                    # Utilidades (carga Excel, presentación)
```

---

## 5. Configuración y variables de entorno

`config.py` centraliza toda la configuración mediante la clase `Config`, poblada desde `.env` (o `.env.local` para pruebas). Valores clave:

| Variable | Descripción | Default |
|----------|-------------|---------|
| `SECRET_KEY` | Clave de firma de sesión y tokens | `dev-secret-key` |
| `MYSQL_HOST/PORT/USER/PASSWORD/DATABASE` | Conexión MySQL | `localhost:3306`, `gestio_humana` |
| `MAIL_ENABLED` | Habilita el envío real de correo (`1`/`0`) | `0` |
| `MAIL_HOST/PORT/USE_SSL/USER/PASSWORD/FROM` | Servidor SMTP | Gmail 587 |
| `MAIL_GH_PERMISOS` | Correo que **aprueba** permisos (Coordinación GH) | `coordinacion.gestionhumana@colbeef.com` |
| `MAIL_GESTOR_CONTRATACION` | Correo del gestor de contratación (portal Locker) | `gestor.contratacion@colbeef.com` |
| `MAIL_GH_INFORMADA` | Correo que recibe copia informativa (rol GH INFORMADA) | `gestionhumana@colbeef.com` |
| `MAIL_PRUEBAS_CC` | CC extra en cada envío (pruebas) | vacío |
| `ADMIN_EMAIL` | Único correo autorizado para rol ADMIN | `tecnologia@colbeef.com` |
| `SIGNATURE_IMAGE_PATH` | Imagen de firma para estampar en el PDF | vacío |
| `SESSION_TIMEOUT_MINUTES` | Cierre por inactividad | `30` |
| `ENABLE_INCAPACIDADES` | Activa el formulario de incapacidades | `0` |
| `ENABLE_CERTIFICADOS` | Activa el módulo de certificados | `0` |
| `CIE10_JSON_PATH` | Ruta al catálogo CIE-10 | autodetección |

> **Seguridad:** `.env` **nunca** debe versionarse con secretos reales. `ADMIN_EMAIL` actúa como cerrojo: el rol ADMIN solo se concede al correo configurado, evitando escalada de privilegios desde la administración de usuarios.

---

## 6. Modelo de datos (base de datos)

Motor **InnoDB**, codificación **utf8mb4_unicode_ci**. El esquema base está en `database/schema.sql`; las columnas y tablas añadidas después viven en `database/migration_*.sql`.

### 6.1 Catálogos de referencia

| Tabla | PK | Descripción |
|-------|----|-------------|
| `rol` | `id` | Roles del sistema (ADMIN, COORD. GH, …) |
| `tipo_documento` | `id_tipo_documento` | CC, TI, PT, PPT |
| `nivel_educativo` | `id_nivel` | Primaria, Bachiller, Técnico, … |
| `profesion` | `id_profesion` | Catálogo de profesiones |
| `eps` | `id` | Entidades promotoras de salud |
| `fondo_pensiones` | `id` | Fondos de pensión |
| `motivo_retiro` | `id` | Causas de retiro |
| `menu` | `id_menu` | Ítems de menú (legado) |

### 6.2 Estructura organizacional (jerárquica)

```
departamento (1) ──< area (N) ──< perfil_ocupacional (N)
```

| Tabla | Campos clave | Notas |
|-------|--------------|-------|
| `departamento` | `id`, `nombre` (UNIQUE), `presupuestados` | Nivel superior |
| `area` | `id`, `departamento_id` (FK), `nombre`, `presupuestados` | UNIQUE `(departamento_id, nombre)` |
| `perfil_ocupacional` | `id_perfil`, `area_id` (FK), `perfil_ocupacional`, `presupuestados` | Cargo dentro de un área |

`presupuestados` permite comparar plazas presupuestadas vs. ocupadas (base de los dashboards de cobertura).

### 6.3 Personal

**`empleado`** (maestro, PK `id_cedula`): datos personales, ubicación, contacto, `departamento`, `area`, `id_perfil_ocupacional`, `eps`, `fondo_pensiones`, `estado` (`ACTIVO`/inactivo), fechas (`fecha_ingreso`, `fecha_nacimiento`), y por migración:
- `foto` — ruta relativa de la foto del empleado.
- `id_user_encargado` (FK → `usuario.id_user`, `ON DELETE SET NULL`) — **jefe inmediato** que aprueba sus solicitudes.

**`hijo`** (PK `id_hijo`, FK `id_cedula`): hijos del empleado, con `estado`.

**`retirado`** (PK `id_retiro`, FK `id_cedula`): histórico de retiros con `fecha_retiro`, `dias_laborados`, `tipo_retiro`, `motivo`.

### 6.4 Usuarios y control de acceso

**`usuario`** (PK `id_user`, ej. `US-0004` o `EMP-<cédula>`):
- `email` (UNIQUE), `password_hash` (Werkzeug), `nombre`, `rol`, `estado`, `acciones`.
- Por migración: `id_cedula` (vincula la cuenta con un empleado del maestro), `foto_perfil`, `firma_path`, `debe_cambiar_clave`.

**`rol_permiso`** (PK `rol_nombre`): nivel `READ`/`WRITE`/`ALL` por rol.
**`rol_modulo`** (UNIQUE `rol_nombre + modulo_key`): visibilidad de cada módulo por rol. La app **lee estas tablas** para construir el menú; si están vacías usa un *fallback* en código.

### 6.5 Solicitudes de autogestión

**`solicitud_permiso`** (PK `id`, FK `id_cedula`):
- `tipo`, `fecha_desde/hasta`, `motivo`, `estado` (`PENDIENTE`/`APROBADO`/`RECHAZADO`).
- `hora_inicio/fin`, `area`, `permiso_remunerado`, `permiso_no_remunerado` (formato GH-FR-007).
- `evidencia` (PDF adjunto), `motivo_cambio_empleado`.
- Resolución: `resuelto_por`, `fecha_resolucion`, `solicitante_email`, `observaciones`.
- Control de correo: `correo_resolucion_enviado`, `correo_resolucion_at`.

**`solicitud_vacaciones`** (migración `migration_solicitud_vacaciones.sql`): periodo causado, días en tiempo/compensados, fechas de inicio/fin/regreso, pago anticipado, estado y resolución.

**`solicitud_incapacidad`** (PK `id`, FK `id_cedula`): fechas, `dias_incapacidad`, `evidencia`, `descripcion`, códigos **CIE-11** (`cie11_codigo/titulo/uri`), `origen_atencion` (`EPS`/`ARL`/`ACCIDENTE_TRANSITO`), soportes (`historial_clinico`, `soat`, `furips`), y resolución.

### 6.6 SST y auditoría

**`incidencia_at`** (INATEL): caracterización de accidentes/incidentes/enfermedades laborales (fecha, cargo, parte del cuerpo, tipo de lesión, causas, seguimiento clínico, investigación).

**`audit_log`** (PK `id`): telemetría de ingresos y acciones — `fecha_hora`, `id_user`, `accion`, `modulo`, `detalle`. Alimenta la vista **Estadísticas de ingresos**.

### 6.7 Diagrama entidad-relación (resumen)

```
departamento ──< area ──< perfil_ocupacional
                                  ▲
                                  │ id_perfil_ocupacional
empleado ─────────────────────────┘
  │  id_cedula (PK)
  ├──< hijo
  ├──< retirado
  ├──< solicitud_permiso
  ├──< solicitud_vacaciones
  ├──< solicitud_incapacidad
  └── id_user_encargado ─────────► usuario (jefe inmediato)
                                     │  id_user (PK)
usuario ── rol ── rol_permiso        └── id_cedula (vínculo portal empleado)
              └── rol_modulo
audit_log ── id_user
```

---

## 7. Autenticación, sesión y seguridad

### 7.1 Acceso a datos

Dos funciones minimalistas encapsulan todo el acceso a MySQL (`app.py`):

```168:186:app.py
def query(sql, params=None, one=False):
    conn = get_db()
    cursor = conn.cursor(dictionary=True)
    cursor.execute(sql, params or ())
    rows = cursor.fetchall()
    cursor.close()
    conn.close()
    return rows[0] if one and rows else rows if not one else None


def execute(sql, params=None):
    conn = get_db()
    cursor = conn.cursor()
    cursor.execute(sql, params or ())
    conn.commit()
    lid = cursor.lastrowid
    cursor.close()
    conn.close()
    return lid
```

- **Siempre** se usan consultas parametrizadas (`%s`) → previene inyección SQL.
- Conexión por operación (abrir/consultar/cerrar). Simple y seguro para carga LAN; el punto de mejora conocido es introducir *pooling* si crece la concurrencia.

### 7.2 Inicio de sesión

`login()` acepta **correo** o **cédula** (empleados sin correo entran con su documento). Verifica `password_hash` con `check_password_hash` (Werkzeug/PBKDF2). Al autenticar:
- Verifica que el empleado vinculado esté `ACTIVO` (`_usuario_puede_acceder`).
- Regenera la sesión, marca `last_activity_ts`, registra el ingreso en `audit_log`.
- Si la clave es la estándar (`Colbeef2026*`) o `debe_cambiar_clave = 1`, fuerza el cambio de contraseña.
- Rol `EMPLEADO` → redirige al **portal del empleado**; los demás → **home** (suite principal).

### 7.3 Gestión de sesión

Hooks `before_request` (por orden):
- **Timeout por inactividad**: si pasan `SESSION_TIMEOUT_MINUTES` sin actividad, cierra sesión y redirige con aviso.
- **Empleado activo**: bloquea a usuarios cuyo empleado pasó a inactivo.
- **Bloqueo de módulos desactivados** (`ENABLE_INCAPACIDADES`, `ENABLE_CERTIFICADOS`).

### 7.4 Cuentas enlazadas y "modos"

Un mismo usuario puede tener cuenta administrativa **y** de empleado. El sistema soporta cambios de contexto controlados:
- **Cambiar a modo empleado** (`/cuenta/cambiar-a-empleado`) para roles permitidos.
- **Modo vacaciones de empleado** y **modo jefe/encargado** (`/encargado/modo`) para revisar solicitudes del equipo.
- **Volver a cuenta principal** (`/cuenta/volver-principal`) restaura el contexto vía `switch_back_user_id`.

### 7.5 Tokens de acción por correo

Para aprobar/rechazar desde el correo sin login, se firman *tokens* con `itsdangerous` (serializer basado en `SECRET_KEY`):

```434:462:app.py
def _create_email_action_token(scope, solicitud_id, action, actor_email=None):
    ...
def _read_email_action_token(token, expected_scope):
    ...
```

Cada token incluye **scope** (`permiso`/`vacaciones`/`incapacidad`), id de solicitud, acción y correo del actor; tiene expiración y se valida contra el `scope` esperado. Impide que un enlace de un dominio se use en otro.

---

## 8. Roles, módulos y control de acceso

### 8.1 Modelo de permisos en dos capas

1. **Nivel de permiso** (`rol_permiso`): `READ` / `WRITE` / `ALL` → habilita escribir/administrar.
2. **Visibilidad por módulo** (`rol_modulo` + `_ROLE_MODULES` en código): qué secciones ve cada rol.

`_get_effective_modules(rol)` fusiona el *fallback* en código con lo que dice la BD, con una regla importante: **la BD solo puede sumar visibilidad, no quitar** (garantiza que ciertos correos siempre vean su módulo). Luego aplica restricciones específicas por rol (p. ej. GESTOR SST nunca ve Permisos).

### 8.2 Decoradores de autorización

| Decorador | Efecto |
|-----------|--------|
| `@login_required` | Exige sesión activa |
| `@role_required(*roles)` | Restringe a roles concretos |
| `@admin_only` | Solo ADMIN |
| `@module_required("clave")` | Exige visibilidad del módulo |
| `@catalogos_required` | Acceso a catálogos |
| `@informe_historico_required` | Solo ADMIN + `gestionhumana@colbeef.com` |

### 8.3 Matriz de roles y módulos (resumen)

| Rol | organización | personal | retiro | familia | eventos | eps | fondos | reportes | admin | permisos | incapacitados |
|-----|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| **ADMIN** | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |
| **COORD. GH** | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✖¹ | ✔ | ✔ |
| **GH INFORMADA** | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✖ | ✔² | ✔ |
| **GESTOR DE CONTRATACION** | ✖ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✖ | ✔ | ✔ |
| **BIENESTAR SOCIAL** | ✖ | ✔ | ✖ | ✔ | ✔ | ✖ | ✖ | ✔³ | ✖ | ✔ | ✖ |
| **GESTOR DE NOMINA** | ✖ | ✔ | ✔ | ✖ | ✖ | ✔ | ✔ | ✔ | ✖ | ✔ | ✔ |
| **GESTOR SST** | ✖ | ✔⁴ | ✖ | ✖ | ✖ | ✖ | ✖ | ✔ | ✖ | ✖ | — |
| **EMPLEADO** | ✖ | ✖ | ✖ | ✖ | ✖ | ✖ | ✖ | ✖ | ✖ | ✔⁵ | ✖ |
| **SISO** | — | ✔ | — | — | — | — | — | — | — | — | ✔ (+incidencias) |

¹ COORD. GH administra usuarios pero no ve Home Setting/Catálogos. · ² Solo consulta, no aprueba. · ³ Solo Total Hijos, sin Dashboard. · ⁴ Solo activo, restringido. · ⁵ Solo su portal de solicitudes.

> Roles adicionales presentes en datos: **JEFE INMEDIATO** (aprueba solicitudes de su equipo vía `id_user_encargado`). Correos especiales (`siso@colbeef.com`, coordinación logística, gerencia) reciben módulos extra por reglas en código (`_is_siso_colbeef_user`, `_is_logistica_coordinator`, `_is_gerencia_user`).

---

## 9. Módulos funcionales

### 9.1 Suite principal / Home
`/` renderiza la suite con tarjetas de acceso según los módulos visibles del usuario. `inject_user()` provee `vm` (view-model de módulos) a todas las plantillas.

### 9.2 Personal
- **Activo** (`/personal-activo`): listado, detalle, alta, edición, retiro y eliminación.
- **Inactivo/Retirados** (`/personal-inactivo`, `/retiro-personal`): histórico y reactivación.
- **Mi equipo** (`/mi-equipo`): empleados cuyo `id_user_encargado` = usuario actual.
- **API** (`/api/empleado/<cedula>`, `/api/personal-buscar`): consulta y edición puntual.

### 9.3 Familia (hijos)
Gestión de hijos (`/hijos-gestion`, `/hijos-activos`, `/hijos-inactivos`) y CRUD (`/hijo/nuevo`, `/hijo/<id>/editar|eliminar`). Reporte **Total Hijos** (`/view-total-hijos`).

### 9.4 Organización
- **Áreas** (`/areas`, `/areas/<id>`) con detalle por perfil y por empleado.
- **Departamentos** (`/departamentos`) y **Perfiles ocupacionales** (`/perfil-ocupacional`) — CRUD completo.
- **Directorio de jefes** (`/directorio-jefes`) con aplicación desde Excel y exportación.

### 9.5 Eventos
- **Cumpleaños** (`/cumpleanos`, API + tarjeta imprimible).
- **Aniversario laboral** (`/aniversario`).

### 9.6 EPS y Fondos
Vistas maestro-detalle por EPS (`/view-eps`) y por fondo de pensiones (`/view-fondos`), con altas, edición, exportación y detalle por empleado (activo y retirado).

### 9.7 Permisos / Licencias (formato GH-FR-007)
Solicitud (`/permisos/solicitar`), edición, listado, aprobación/rechazo, evidencia y **exportación**. Incluye acciones por correo. Ver [flujos](#10-flujos-de-solicitudes).

### 9.8 Vacaciones
Solicitud (`/vacaciones/solicitar`) con **cálculo automático de días hábiles**, listado, mis solicitudes, aprobación/rechazo y acciones por correo.

### 9.9 Incapacidades (flag `ENABLE_INCAPACIDADES`)
Solicitud con **búsqueda CIE-10/CIE-11** (`/api/cie10/search`, `/api/cie11/search`), evidencia, historial clínico, SOAT/FURIPS para accidentes de tránsito, y resolución.

### 9.10 Incapacitados (Salud) y SST/Incidencias
- **Incapacitados** (`/incapacitados`): tablero y export para Salud.
- **Incidencias INATEL** (`/incidencias`, `/incidencias/dashboard`): registro, edición, historial por cédula y análisis de accidentalidad. Rol SISO.

### 9.11 Reportes y estadísticas
- **Dashboard** (`/dashboard/<chart_key>` con `data` y `export`).
- **Total Personal** (`/view-total-personal`) y **Total Hijos**.
- **Estadísticas de ingresos** (`/estadisticas-ingresos`): consume `audit_log`.
- **Informe histórico** de permisos/vacaciones a Excel (restringido).
- **Exportación genérica** (`/export/<page_key>`).

### 9.12 Administración
- **Usuarios** (`/users`): alta, edición, activar/inactivar, reset de contraseña (individual y masivo estándar).
- **Catálogos** (`/admin/catalogos`): tipos de documento, niveles educativos, profesiones, motivos de retiro.
- **Home Setting** (`/home-setting`) y utilidades (`/admin/fix-fechas-ingreso`, `/test-db`).

---

## 10. Flujos de solicitudes

Los tres flujos (permiso, vacaciones, incapacidad) comparten el mismo patrón:

```
Empleado                Sistema                     Jefe inmediato / GH
   │  llena formulario     │                                │
   ├──────────────────────►│  guarda solicitud (PENDIENTE)  │
   │                       │  notifica por correo ──────────►│  (enlace con token firmado)
   │                       │                                │  clic Aprobar/Rechazar
   │                       │◄───────────────────────────────┤  (email-action + confirm)
   │                       │  valida token + reglas         │
   │                       │  actualiza estado + resuelto_por│
   │◄──────────────────────┤  correo de resolución al empleado
   │                       │  copia a GH informada          │
```

### 10.1 ¿Quién puede resolver?

- **ADMIN / COORD. GH**: ven y resuelven **todas** las solicitudes.
- **Jefe inmediato** (`id_user_encargado`): solo las de **su equipo** (modo encargado).
- **Restricción de auto-aprobación**: un jefe **no puede aprobar su propia solicitud**. Se aplica en dos capas:
  - UI: `_puede_resolver_solicitud` oculta la acción si la solicitud es propia.
  - Enlace de correo: `_actor_email_es_solicitante` bloquea la aprobación si el correo que resuelve coincide con el del solicitante.

### 10.2 Adjuntos y evidencia

- Permisos de tipo **Jurado de votación** y **Ejercer derecho al voto** exigen adjuntar soporte (PDF/imagen, hasta **10 MB**).
- Al aprobar un permiso con evidencia PDF y con `SIGNATURE_IMAGE_PATH` configurado, se genera una **copia firmada** que se adjunta al correo del empleado.

### 10.3 Correos de resolución

`notificar_resolucion_permiso/vacaciones/incapacidad` envían el resultado al empleado; `notificar_gh_resolucion_por_jefe` informa a GH cuando resuelve un jefe. El campo `correo_resolucion_enviado` evita reenvíos duplicados.

---

## 11. Lógica de negocio destacada

### 11.1 Cálculo de días de vacaciones (con festivos)

`_calcular_dias_vacaciones` cuenta días **excluyendo siempre domingos y festivos colombianos**, y opcionalmente sábados para cédulas con jornada especial:

```3499:3520:app.py
def _calcular_dias_vacaciones(fecha_inicio, fecha_fin, id_cedula=None):
    """Cuenta dias de vacaciones; domingos y festivos siempre se excluyen."""
    ...
    excluir_sabado = _vacaciones_excluye_sabado(id_cedula)
    festivos = set()
    for year in range(inicio.year, fin.year + 1):
        festivos.update(_festivos_colombia(year))
    while cursor <= fin:
        if cursor.weekday() != 6 and cursor not in festivos and not (excluir_sabado and cursor.weekday() == 5):
            dias += 1
        cursor += timedelta(days=1)
    return dias
```

Los festivos se calculan de forma **algorítmica** (sin tabla codificada):
- `_pascua_gregoriana(year)`: algoritmo de Gauss/Butcher para la Pascua.
- `_festivos_colombia(year)`: festivos fijos + los **trasladables** que la Ley Emiliani mueve al **lunes siguiente** (`_siguiente_lunes`), más los relativos a Pascua (Jueves/Viernes Santo, Ascensión, Corpus Christi, Sagrado Corazón).

> Esta misma lógica está replicada en JavaScript en `vacaciones_form.html` para que el conteo mostrado en el navegador coincida con el del servidor (única fuente de verdad al guardar).

### 11.2 Sincronización estado empleado ↔ usuario

Cuando un empleado se activa/inactiva, `_sincronizar_usuarios_empleado_por_estado` propaga el estado a sus cuentas de portal (`id_cedula` o `EMP-<cédula>`), de modo que un retirado pierde acceso automáticamente.

### 11.3 Auditoría

`registrar_audit(accion, modulo, detalle, id_user)` inserta en `audit_log`. Se usa en login y acciones sensibles; `/estadisticas-ingresos` agrega estos datos (con *collation* explícita en los JOIN para evitar errores de mezcla utf8mb4).

---

## 12. Sistema de correo (mail_utils)

`mail_utils.py` encapsula todo el correo. Puntos clave:

### 12.1 Envío robusto y serializado
`send_mail()` respeta `MAIL_ENABLED`, detecta SSL por puerto (465) o STARTTLS (587) y **serializa los envíos** con un `threading.Lock` global y una espera mínima entre correos:

```75:103:mail_utils.py
_SMTP_SEND_LOCK = threading.Lock()
_SMTP_LAST_SEND_AT = 0.0


def _smtp_send_with_mode(app, msg, recipients, host, port, use_ssl, use_starttls):
    ...


def _smtp_wait_turn(app):
    ...
```

Esto resuelve el error `421 Too many concurrent SMTP connections`: los envíos no compiten por conexiones simultáneas y se reintenta con *fallback* SSL solo ante `WRONG_VERSION_NUMBER`.

### 12.2 Plantillas HTML corporativas
`_wrap_html(content, title, subtitle)` envuelve el contenido con la identidad Colbeef (`_MAIL_STYLE`). Helpers `_tabla_detalle_solicitud`, `_tabla_detalle_vacaciones`, `_tabla_detalle_incapacidad` renderizan los datos de cada solicitud (incluyendo cédula).

### 12.3 Notificaciones de dominio
| Función | Cuándo |
|---------|--------|
| `notificar_nueva_solicitud_permiso` | Nuevo permiso → GH + contratación + informada |
| `notificar_nueva_solicitud_vacaciones` | Nueva vacación |
| `notificar_encargado_nueva_solicitud` | Aviso al jefe inmediato con enlace-token |
| `notificar_resolucion_permiso/vacaciones/incapacidad` | Resultado al empleado |
| `notificar_gh_resolucion_por_jefe` | Informar a GH cuando resuelve un jefe |

Adjuntos e imágenes *inline* (logo, firma) se soportan vía `attachments` / `inline_images`.

---

## 13. Generación de PDF

### 13.1 `pdf_informe_permiso.py`
Reconstruye con **reportlab** el formato **GH-FR-007** tal como se ve en el formulario web (caja informativa, campos con borde, bloque de firmas con celda verde para la firma de Coordinación) y lo rellena con los datos de la solicitud. Usa la paleta corporativa (`VERDE_TITULO`, `GRIS_LABEL`, etc.). Este PDF se envía al aprobar.

### 13.2 `pdf_firma.py`
Estampa una imagen de firma (`SIGNATURE_IMAGE_PATH`) sobre un PDF de evidencia ya existente usando **pypdf** + **Pillow**, generando la copia firmada que se adjunta al empleado.

---

## 14. Sincronización del directorio organizacional

`directorio_colbeef.py` importa la estructura de mando desde `database/Directorio_Colbeef.xlsx` (openpyxl) y la aplica a la BD:

- `EMAIL_CANONICAL` / `AREA_ALIASES`: normalizan correos y nombres de área con variantes históricas.
- `load_directorio()` lee el Excel; `apply_directorio()` crea/actualiza usuarios (`_next_user_id`), asegura el rol **JEFE INMEDIATO** (`_ensure_jefe_rol`) y **vincula cada empleado con su jefe** (`id_user_encargado`).
- `ENCARGADO_OVERRIDE`: reglas fijas que fuerzan ciertos reportes de mando (p. ej. coordinadores → Dirección Financiera), sobrescribiendo lo que diga el Excel.
- `directorio_for_display()`: versión de solo lectura para la vista `/directorio-jefes`.

Esto convierte la jerarquía en el mecanismo que decide **quién aprueba a quién** en los flujos de autogestión.

---

## 15. Capa de presentación (frontend)

- **SSR con Jinja2**: cada ruta renderiza un `.html` que extiende `base.html` (interfaz administrativa) o `base_empleado.html` (portal del empleado).
- **`base.html`** aporta: *topbar* con búsqueda global (Ctrl+K), indicador "EN VIVO", menú de perfil con carga de avatar, y *sidebar* con los módulos visibles (`vm`).
- **CSS**: `static/css/style.css` (escritorio) + `static/css/mobile.css` (responsivo). Tipografía **Inter** e iconografía **Material Symbols**.
- **JS vanilla**: `static/js/app.js` (interacción: dropdowns, búsqueda, refresco) y `static/js/calendar.js`. No hay framework SPA ni *build step*.
- **Plantillas reutilizables**: `data_table.html` (listados), `detail.html` (fichas), `dashboard*.html` (gráficas), `*_email_action.html` (confirmación de acciones de correo).

---

## 16. Referencia de rutas (endpoints)

> ~150 rutas en `app.py`. Resumen por área funcional (método por defecto `GET` salvo indicación).

### Autenticación y cuenta
| Ruta | Métodos | Función |
|------|---------|---------|
| `/login` | GET, POST | Inicio de sesión (correo o cédula) |
| `/logout` | GET | Cerrar sesión |
| `/register` | GET, POST | Deshabilitada (alta solo por ADMIN) |
| `/cambiar-clave` | GET, POST | Cambio de clave obligatorio |
| `/cuenta/cambiar-a-empleado` | POST | Entrar a modo empleado |
| `/cuenta/cambiar` | POST | Cambiar entre cuentas enlazadas |
| `/cuenta/volver-principal` | POST | Volver a la cuenta principal |
| `/encargado/modo` · `/encargado/modo/salir` | POST | Modo jefe/encargado |
| `/empleado/vacaciones-modo` (+`/salir`) | POST | Modo vacaciones del empleado |
| `/perfil/foto` | POST | Subir foto de perfil |
| `/locker` | GET | Acceso integrado (gestor contratación) |

### Portal del empleado
| Ruta | Función |
|------|---------|
| `/empleado` | Portal principal del empleado |
| `/empleado/mis-solicitudes` | Solicitudes propias |
| `/empleado/registro` | Registro/actualización de datos |
| `/empleado/cambiar-password` | Cambio de contraseña |

### Permisos
| Ruta | Métodos | Función |
|------|---------|---------|
| `/permisos` | GET | Listado |
| `/permisos/solicitar` | GET, POST | Nueva solicitud |
| `/permisos/<id>/editar` | GET, POST | Editar |
| `/permisos/<id>/aprobar` · `/rechazar` | POST | Resolver (con login) |
| `/permisos/email-action` (+`/confirm`) | GET/POST | Resolver desde el correo |
| `/permisos/<id>/evidencia` | GET | Descargar evidencia |
| `/permisos/export` | GET | Exportar |
| `/informes/permisos-vacaciones` (+`/export`) | GET | Informe histórico |

### Vacaciones
| Ruta | Métodos | Función |
|------|---------|---------|
| `/vacaciones` | GET | Listado |
| `/vacaciones/solicitar` | GET, POST | Nueva solicitud (cálculo de días) |
| `/vacaciones/<id>/aprobar` · `/rechazar` | POST | Resolver |
| `/vacaciones/email-action` (+`/confirm`) | GET/POST | Resolver desde el correo |
| `/vacaciones/mis-solicitudes` | GET | Solicitudes propias |

### Incapacidades e incapacitados
| Ruta | Métodos | Función |
|------|---------|---------|
| `/incapacidades/solicitar` | GET, POST | Nueva incapacidad |
| `/incapacidades` · `/mis-solicitudes` | GET | Listados |
| `/incapacidades/<id>/aprobar` · `/rechazar` | POST | Resolver |
| `/incapacidades/email-action` (+`/evidencia`, `/confirm`) | GET/POST | Acciones por correo |
| `/api/cie10/search` · `/api/cie11/search` | GET | Búsqueda de diagnósticos |
| `/incapacitados` (+`/<id>`, `/export`, `/evidencia`, `/adjunto/<campo>`) | GET | Tablero de Salud |

### Incidencias (SST/INATEL)
| Ruta | Métodos | Función |
|------|---------|---------|
| `/incidencias` · `/incidencias/dashboard` | GET | Listado y análisis |
| `/incidencias/nueva` · `/<id>/editar` | GET, POST | Alta/edición |
| `/incidencias/<id>/eliminar` | POST | Eliminar |
| `/incidencias/api/historial/<cedula>` | GET | Historial por cédula |

### Personal, familia y organización
| Ruta | Función |
|------|---------|
| `/personal-activo` (+`/<id>`, `/nuevo`, `/<id>/editar|eliminar|retirar|reactivar`) | CRUD de personal |
| `/personal-inactivo`, `/retiro-personal`, `/retirado/<id>/editar|eliminar` | Retirados |
| `/mi-equipo` | Equipo del jefe |
| `/hijos-gestion`, `/hijos-activos`, `/hijos-inactivos`, `/hijo/...` | Familia |
| `/areas` (+`/<id>`, `/nueva`, `/<id>/editar|eliminar`) | Áreas |
| `/departamentos` (+CRUD), `/api/areas-por-depto/<id>` | Departamentos |
| `/perfil-ocupacional`, `/perfil/...` | Perfiles |
| `/directorio-jefes` (+`/aplicar`, `/export`) | Directorio de mando |
| `/view-eps/...`, `/view-fondos/...` | EPS y fondos |

### Eventos, reportes y administración
| Ruta | Función |
|------|---------|
| `/cumpleanos` (+`/api/cumpleanos`, `/tarjeta`), `/aniversario` | Eventos |
| `/view-total-hijos`, `/view-total-personal` | Reportes |
| `/dashboard/<chart_key>` (+`/data`, `/export`) | Gráficas |
| `/estadisticas-ingresos` | Auditoría de ingresos |
| `/export/<page_key>` | Exportación genérica |
| `/users` (+`/nuevo`, `/<id>/editar|toggle-estado|reset-password`, `/reset-password-estandar-todos`) | Usuarios |
| `/admin/catalogos` (+ tipo-documento, nivel-educativo, profesion, motivo-retiro) | Catálogos |
| `/home-setting`, `/about`, `/test-db`, `/admin/fix-fechas-ingreso` | Utilidades |

---

## 17. Despliegue y ejecución

### 17.1 Requisitos
- Python 3.10+ y MySQL Server.
- Dependencias: `pip install -r requirements.txt` (idealmente en un *venv*).

### 17.2 Base de datos
1. Ejecutar `database/crear_bd_completo.sql` como `root` (crea BD, usuario y tablas).
2. Aplicar las migraciones `database/migration_*.sql` necesarias (portal empleado, encargado, incapacidades, auditoría, etc.).

### 17.3 Configuración
Crear `.env` en la raíz con MySQL, `SECRET_KEY` y, si aplica, SMTP y `ADMIN_EMAIL`.

### 17.4 Arranque
- **Desarrollo:** `python app.py` (http://localhost:5000).
- **Producción (recomendado):** `python run.py` → **Waitress** en `0.0.0.0:5000`, 8 hilos, accesible por LAN.
- **Exposición temporal a Internet:** `ngrok.exe http 5000`.

```bash
# Producción en LAN
python run.py
#  Local:   http://localhost:5000
#  Red LAN: http://<IP-DE-ESTA-MAQUINA>:5000
```

---

## 18. Convenciones y notas de mantenimiento

Notas orientadas a mantenimiento senior:

- **SQL explícito y parametrizado.** No hay ORM. Toda consulta usa `%s` — mantener esta disciplina para no abrir inyección SQL.
- **Una fuente de verdad para permisos.** La visibilidad de módulos se resuelve en `_get_effective_modules`; la BD **suma** pero no resta. Al crear un rol nuevo, defínelo en `_ROLE_MODULES` **y** en `rol_modulo`.
- **Cerrojo de ADMIN.** El rol ADMIN se ancla a `ADMIN_EMAIL`. No conceder ADMIN por UI a otros correos.
- **Reglas de negocio duplicadas cliente/servidor.** El cálculo de días de vacaciones existe en Python (autoritativo) y en JS (UX). Si cambia una, actualizar la otra.
- **Correo serializado.** Respetar el `_SMTP_SEND_LOCK`; no lanzar envíos en paralelo sin pasar por `send_mail` para evitar el error 421 del servidor SMTP.
- **Estado empleado ↔ cuenta.** Cualquier cambio de estado de empleado debe pasar por `_sincronizar_usuarios_empleado_por_estado` para no dejar cuentas activas de retirados.
- **`app.py` es grande (~9.6k líneas).** La organización es por bloques (helpers → decoradores → rutas por módulo). Al agregar funcionalidad, ubicar la ruta junto a las de su módulo y reutilizar helpers existentes antes de crear nuevos.
- **Migraciones idempotentes.** Las migraciones más recientes verifican existencia de columna/índice/FK (`information_schema`) antes de aplicar — seguir ese patrón en nuevas migraciones.
- **Flags de módulo.** `ENABLE_INCAPACIDADES` / `ENABLE_CERTIFICADOS` permiten activar módulos por entorno sin tocar código.

---

*Fin del documento.*
