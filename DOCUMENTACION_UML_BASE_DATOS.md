# UML / Modelo de datos — Gestión Humana Colbeef

Este documento contiene código Mermaid listo para pegar en:

- https://mermaid.live
- Markdown compatible con Mermaid
- GitHub, GitLab, Obsidian o documentación técnica

> Nota técnica: para una base de datos el diagrama más preciso es un
> **Entidad–Relación (ER)**. Las relaciones rotuladas como `FK física` existen
> realmente en MySQL. Las rotuladas como `relación lógica` son utilizadas por
> la aplicación, aunque la base todavía no declara una restricción `FOREIGN KEY`.

---

## 1. Modelo principal: organización, personal y catálogos

```mermaid
erDiagram
    DEPARTAMENTO {
        int id PK
        varchar nombre UK
        int presupuestados
    }

    AREA {
        int id PK
        int departamento_id FK
        varchar nombre
        int presupuestados
    }

    PERFIL_OCUPACIONAL {
        varchar id_perfil PK
        int area_id FK
        varchar perfil_ocupacional
        int presupuestados
    }

    EMPLEADO {
        varchar id_cedula PK
        varchar apellidos_nombre
        varchar departamento
        varchar area
        varchar id_perfil_ocupacional
        varchar fecha_ingreso
        varchar estado
        varchar tipo_documento
        varchar nivel_educativo
        varchar profesion
        varchar eps
        varchar fondo_pensiones
        varchar direccion_email
        varchar id_user_encargado FK
        varchar foto
    }

    USUARIO {
        varchar id_user PK
        varchar email UK
        varchar password_hash
        varchar nombre
        varchar rol
        boolean estado
        varchar id_cedula
        boolean debe_cambiar_clave
    }

    HIJO {
        varchar id_hijo PK
        varchar identificacion_hijo
        varchar id_cedula
        varchar apellidos_nombre
        varchar fecha_nacimiento
        varchar sexo
        varchar estado
    }

    TIPO_DOCUMENTO {
        varchar id_tipo_documento PK
        varchar tipo_documento
    }

    NIVEL_EDUCATIVO {
        varchar id_nivel PK
        varchar nivel
    }

    PROFESION {
        varchar id_profesion PK
        varchar profesion UK
    }

    EPS {
        int id PK
        varchar nombre UK
    }

    FONDO_PENSIONES {
        int id PK
        varchar nombre UK
    }

    DEPARTAMENTO ||--o{ AREA : "contiene - FK física"
    AREA ||--o{ PERFIL_OCUPACIONAL : "define - FK física"
    PERFIL_OCUPACIONAL ||--o{ EMPLEADO : "cargo - relación lógica"
    USUARIO ||--o{ EMPLEADO : "jefe inmediato - FK física"
    EMPLEADO ||--o| USUARIO : "cuenta vinculada - relación lógica"
    EMPLEADO ||--o{ HIJO : "tiene - relación lógica"
    TIPO_DOCUMENTO ||--o{ EMPLEADO : "clasifica - relación lógica"
    NIVEL_EDUCATIVO ||--o{ EMPLEADO : "clasifica - relación lógica"
    PROFESION ||--o{ EMPLEADO : "clasifica - relación lógica"
    EPS ||--o{ EMPLEADO : "afilia - relación lógica"
    FONDO_PENSIONES ||--o{ EMPLEADO : "afilia - relación lógica"
```

### Jerarquía organizacional

```mermaid
flowchart LR
    D[Departamento] --> A[Área]
    A --> C[Cargo / Perfil ocupacional]
    C --> E[Empleado]
    J[Usuario jefe inmediato] -->|id_user_encargado| E
    E --> U[Cuenta de usuario vinculada por cédula]
```

---

## 2. Seguridad, roles, módulos y auditoría

```mermaid
erDiagram
    ROL {
        int id PK
        varchar nombre UK
    }

    ROL_PERMISO {
        varchar rol_nombre PK,FK
        enum nivel
    }

    ROL_MODULO {
        int id PK
        varchar rol_nombre FK
        varchar modulo_key
        boolean visible
    }

    USUARIO {
        varchar id_user PK
        varchar email UK
        varchar password_hash
        varchar nombre
        varchar rol
        boolean estado
        varchar id_cedula
        boolean debe_cambiar_clave
    }

    AUDIT_LOG {
        int id PK
        datetime fecha_hora
        varchar id_user
        varchar accion
        varchar modulo
        varchar detalle
    }

    MENU {
        varchar id_menu PK
        varchar nombre
        varchar vista
        varchar imagen
    }

    ROL ||--|| ROL_PERMISO : "nivel READ-WRITE-ALL"
    ROL ||--o{ ROL_MODULO : "módulos visibles - FK física"
    ROL ||--o{ USUARIO : "asigna rol - relación lógica"
    USUARIO ||--o{ AUDIT_LOG : "genera eventos - relación lógica"
```

### Flujo de autenticación y autorización

```mermaid
flowchart TD
    A[Usuario ingresa correo o cédula y contraseña] --> B{¿Cuenta activa?}
    B -- No --> X[Acceso rechazado]
    B -- Sí --> C{¿Empleado vinculado está ACTIVO?}
    C -- No --> X
    C -- Sí --> D{¿Debe cambiar contraseña?}
    D -- Sí --> E[Cambio obligatorio de contraseña]
    E --> F[Crear sesión]
    D -- No --> F
    F --> G[Resolver rol]
    G --> H[Consultar nivel en ROL_PERMISO]
    G --> I[Consultar módulos en ROL_MODULO]
    H --> J[Autorizar lectura, escritura o administración]
    I --> K[Construir menú visible]
    J --> L[Registrar acción en AUDIT_LOG]
    K --> L
```

---

## 3. Permisos, vacaciones e incapacidades

```mermaid
erDiagram
    EMPLEADO {
        varchar id_cedula PK
        varchar apellidos_nombre
        varchar area
        varchar estado
        varchar id_user_encargado
    }

    SOLICITUD_PERMISO {
        int id PK
        varchar id_cedula FK
        varchar tipo
        date fecha_desde
        date fecha_hasta
        text motivo
        time hora_inicio
        time hora_fin
        varchar evidencia
        datetime fecha_solicitud
        enum estado
        text observaciones
        varchar resuelto_por
        datetime fecha_resolucion
        varchar solicitante_email
    }

    SOLICITUD_VACACIONES {
        int id PK
        varchar id_cedula FK
        date fecha_solicitud
        varchar periodo_causado
        int dias_en_tiempo
        int dias_compensados_dinero
        date fecha_inicio
        date fecha_fin
        date fecha_regreso
        boolean pago_anticipado
        enum estado
        text observaciones
        varchar resuelto_por
        datetime fecha_resolucion
    }

    SOLICITUD_INCAPACIDAD {
        int id PK
        varchar id_cedula
        varchar area
        date fecha_desde
        date fecha_hasta
        int dias_incapacidad
        varchar evidencia
        text descripcion
        varchar cie11_codigo
        enum origen_atencion
        boolean requiere_historial
        varchar historial_clinico
        boolean accidente_transito
        varchar soat
        varchar furips
        enum estado
        text observaciones
        varchar resuelto_por
    }

    EMPLEADO ||--o{ SOLICITUD_PERMISO : "solicita - FK física"
    EMPLEADO ||--o{ SOLICITUD_VACACIONES : "solicita - FK física"
    EMPLEADO ||--o{ SOLICITUD_INCAPACIDAD : "solicita - relación lógica"
```

### Flujo general de aprobación

```mermaid
flowchart TD
    A[Empleado crea solicitud] --> B[Validar empleado ACTIVO]
    B --> C{Tipo de solicitud}

    C -- Permiso --> P1[Validar fechas, horas y motivo]
    P1 --> P2{Jurado de votación o derecho al voto?}
    P2 -- Sí --> P3[Exigir soporte]
    P2 -- No --> N[Continuar]
    P3 --> N

    C -- Vacaciones --> V1[Calcular días hábiles]
    V1 --> V2[Excluir domingos y festivos de Colombia]
    V2 --> V3[Excluir sábados para empleados configurados]
    V3 --> N

    C -- Incapacidad --> I1[Exigir evidencia y descripción]
    I1 --> I2[Registrar CIE-11 y origen de atención]
    I2 --> I3{Accidente de tránsito?}
    I3 -- Sí --> I4[Validar SOAT, FURIPS e historial si aplica]
    I3 -- No --> N
    I4 --> N

    N[Guardar estado PENDIENTE] --> J[Resolver jefe inmediato asignado]
    J --> M[Enviar correo con enlace firmado]
    M --> R{Jefe intenta resolver}
    R --> S{¿Es solicitud propia?}
    S -- Sí --> X[Bloquear autoaprobación]
    S -- No --> T{Decisión}
    T -- Aprobar --> U[Estado APROBADO]
    T -- Rechazar --> W[Estado RECHAZADO]
    U --> Z[Registrar responsable, fecha y observaciones]
    W --> Z
    Z --> Y[Notificar al empleado y a GH]
```

### Estados de una solicitud

```mermaid
stateDiagram-v2
    [*] --> PENDIENTE: crear solicitud
    PENDIENTE --> APROBADO: jefe o GH aprueba
    PENDIENTE --> RECHAZADO: jefe o GH rechaza
    PENDIENTE --> PENDIENTE: intento de autoaprobación bloqueado
    APROBADO --> [*]
    RECHAZADO --> [*]
```

---

## 4. Retiro de personal y Paz y Salvo

```mermaid
erDiagram
    EMPLEADO {
        varchar id_cedula PK
        varchar apellidos_nombre
        varchar estado
        varchar id_user_encargado
    }

    RETIRADO {
        varchar id_retiro PK
        varchar id_cedula
        varchar apellidos_nombre
        varchar departamento
        varchar area
        varchar id_perfil_ocupacional
        varchar fecha_ingreso
        varchar fecha_retiro
        int dias_laborados
        varchar tipo_retiro
        text motivo
    }

    MOTIVO_RETIRO {
        int id PK
        varchar tipo_retiro UK
    }

    PAZ_SALVO_RETIRO {
        int id PK
        varchar id_retiro
        varchar id_cedula
        boolean incluir_tecnologia
        boolean incluir_fondo_empleados
        varchar estado
        varchar creado_por
        datetime fecha_creacion
        datetime fecha_actualizacion
    }

    PAZ_SALVO_DETALLE {
        int id PK
        int paz_salvo_id
        varchar area
        varchar responsable_nombre
        varchar responsable_email
        varchar estado
        text observacion
        datetime fecha_envio
        datetime fecha_respuesta
    }

    EMPLEADO ||--o{ RETIRADO : "genera historial - relación lógica"
    MOTIVO_RETIRO ||--o{ RETIRADO : "clasifica - relación lógica"
    RETIRADO ||--o| PAZ_SALVO_RETIRO : "origina - relación lógica"
    PAZ_SALVO_RETIRO ||--|{ PAZ_SALVO_DETALLE : "contiene responsables - relación lógica"
```

### Flujo de retiro y Paz y Salvo

```mermaid
flowchart TD
    A[GH selecciona empleado] --> B[Registrar fecha y motivo de retiro]
    B --> C[Crear registro RETIRADO]
    C --> D[Marcar EMPLEADO como INACTIVO]
    D --> E[Desactivar cuentas vinculadas]
    E --> F{¿Generar Paz y Salvo?}
    F -- No --> G[Finalizar retiro]
    F -- Sí --> H[Crear PAZ_SALVO_RETIRO]
    H --> I[Crear detalles obligatorios]
    I --> I1[Jefe inmediato]
    I --> I2[SST]
    I --> I3[Restaurante]
    I --> I4[Contabilidad]
    H --> J{Opcionales seleccionados?}
    J -- Tecnología --> J1[Agregar Tecnología]
    J -- Fondo de empleados --> J2[Agregar Fondo de Empleados]
    I1 --> K[Enviar correos con token firmado]
    I2 --> K
    I3 --> K
    I4 --> K
    J1 --> K
    J2 --> K
    K --> L[Responsable abre enlace sin iniciar sesión]
    L --> M[Registra observación y respuesta]
    M --> N{¿Todos respondieron?}
    N -- No --> O[Estado PENDIENTE]
    O --> L
    N -- Sí --> P[Estado COMPLETADO]
    P --> Q[Enviar notificación al retirado y GH]
    H --> R{GH cancela?}
    R -- Sí --> S[Estado CANCELADO e invalidar enlaces]
```

### Estados del Paz y Salvo

```mermaid
stateDiagram-v2
    [*] --> PENDIENTE: generar
    PENDIENTE --> PENDIENTE: respuestas parciales
    PENDIENTE --> COMPLETADO: todos los detalles respondidos
    PENDIENTE --> CANCELADO: cancelación por GH
    COMPLETADO --> [*]
    CANCELADO --> [*]
```

---

## 5. Seguridad y salud en el trabajo

```mermaid
erDiagram
    EMPLEADO {
        varchar id_cedula PK
        varchar apellidos_nombre
        varchar area
        varchar estado
    }

    INCIDENCIA_AT {
        int id PK
        int numero_registro
        date fecha_accidente
        varchar tipo_evento
        varchar cedula
        varchar nombre_trabajador
        varchar cargo
        varchar area_seccion_ocurrencia
        int dias_incapacidad
        varchar parte_cuerpo_afectada
        varchar tipo_lesion
        text descripcion_accidente
        text causas
        text seguimiento_clinico
        datetime creado_en
        varchar creado_por
    }

    EMPLEADO ||--o{ INCIDENCIA_AT : "accidentes e incidentes - relación lógica"
```

---

## 6. Control de asistencia y liquidación FaceCol

```mermaid
erDiagram
    EMPLEADO {
        varchar id_cedula PK
        varchar apellidos_nombre
        varchar estado
    }

    FACECOL_EMPLOYEE_CONFIG {
        varchar id_cedula PK
        boolean turno_fijo
        boolean ingresar_sin_biometria
        boolean turno_administrativo
        boolean pagar_solo_recargos
        boolean solo_controlar_ingresos
        boolean no_pagar_propina
        boolean uso_app
        int dia_descanso
        int tiempo_almuerzo_minutos
    }

    FACECOL_ATTENDANCE_ADJUSTMENT {
        bigint id PK
        varchar id_cedula
        date work_date
        time adjusted_start_time
        time adjusted_end_time
        varchar justification
        varchar updated_by
        datetime updated_at
    }

    FACECOL_HOLIDAY {
        date holiday_date PK
        varchar description
        datetime created_at
    }

    FACECOL_LIQUIDACION {
        bigint id PK
        date week_start
        date week_end
        datetime generated_at
        varchar generated_by
    }

    FACECOL_LIQUIDACION_DETALLE {
        bigint id PK
        bigint liquidacion_id
        varchar id_cedula
        varchar employee_name
        decimal total_hours
        decimal regular_hours
        decimal overtime_hours
        decimal sunday_hours
        decimal holiday_hours
        decimal payable_hours
        text notes
    }

    EMPLEADO ||--o| FACECOL_EMPLOYEE_CONFIG : "configura - relación lógica"
    EMPLEADO ||--o{ FACECOL_ATTENDANCE_ADJUSTMENT : "ajustes - relación lógica"
    FACECOL_LIQUIDACION ||--|{ FACECOL_LIQUIDACION_DETALLE : "desglosa - relación lógica"
    EMPLEADO ||--o{ FACECOL_LIQUIDACION_DETALLE : "liquida - relación lógica"
```

---

## 7. Vista general de módulos

```mermaid
flowchart LR
    U[Usuarios y roles] --> AUTH[Autenticación y permisos]
    AUTH --> P[Personal]
    AUTH --> O[Organización y catálogos]
    AUTH --> S[Solicitudes]
    AUTH --> R[Retiro]
    AUTH --> SST[SST]
    AUTH --> F[FaceCol]

    O --> D[Departamentos]
    D --> A[Áreas]
    A --> C[Cargos]
    C --> P

    P --> H[Hijos]
    P --> S
    P --> R
    P --> SST
    P --> F

    S --> SP[Permisos]
    S --> SV[Vacaciones]
    S --> SI[Incapacidades]

    R --> PS[Paz y Salvo]
    PS --> PSD[Respuestas por responsable]

    SST --> IA[Incidentes y accidentes]
    F --> FC[Configuración]
    F --> AJ[Ajustes de asistencia]
    F --> LIQ[Liquidaciones]

    AUTH --> AUD[Auditoría]
```

---

## 8. Relaciones físicas existentes actualmente en MySQL

Las claves foráneas que existen físicamente son:

```text
area.departamento_id                 -> departamento.id
perfil_ocupacional.area_id           -> area.id
empleado.id_user_encargado           -> usuario.id_user
rol_modulo.rol_nombre                -> rol.nombre
rol_permiso.rol_nombre               -> rol.nombre
solicitud_permiso.id_cedula          -> empleado.id_cedula
solicitud_vacaciones.id_cedula       -> empleado.id_cedula
```

Relaciones importantes que hoy son lógicas y convendría convertir en claves
foráneas durante una futura normalización:

```text
usuario.id_cedula                    -> empleado.id_cedula
empleado.id_perfil_ocupacional       -> perfil_ocupacional.id_perfil
hijo.id_cedula                       -> empleado.id_cedula
retirado.id_cedula                   -> empleado.id_cedula
retirado.id_perfil_ocupacional       -> perfil_ocupacional.id_perfil
solicitud_incapacidad.id_cedula      -> empleado.id_cedula
paz_salvo_retiro.id_retiro           -> retirado.id_retiro
paz_salvo_detalle.paz_salvo_id       -> paz_salvo_retiro.id
audit_log.id_user                    -> usuario.id_user
facecol_employee_config.id_cedula    -> empleado.id_cedula
facecol_attendance_adjustment.id_cedula -> empleado.id_cedula
facecol_liquidacion_detalle.liquidacion_id -> facecol_liquidacion.id
facecol_liquidacion_detalle.id_cedula -> empleado.id_cedula
```

