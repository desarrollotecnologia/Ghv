-- ============================================================
-- VALIDACION LOGICA PERMISOS (correos + aprobadores + escalamiento)
-- Fecha: 2026-04-28
--
-- Uso recomendado:
-- 1) Ejecuta primero la migracion principal:
--    database/migracion_permisos_admin_planta_20260428.sql
-- 2) Ajusta aqui los correos del CFG (mismos de la migracion).
-- 3) Ejecuta este archivo y revisa cada bloque en orden.
-- ============================================================
USE gestio_humana;

-- ------------------------------------------------------------
-- A) CFG: aprobadores y escalamiento (debe coincidir con migracion)
-- ------------------------------------------------------------
DROP TEMPORARY TABLE IF EXISTS cfg_aprobadores;
CREATE TEMPORARY TABLE cfg_aprobadores (
    clave VARCHAR(80) PRIMARY KEY,
    email VARCHAR(255) NOT NULL
);

INSERT INTO cfg_aprobadores (clave, email) VALUES
    -- Direccion Administrativa y Financiera
    ('director_admin',              'gerencia.financiera@colbeef.com'),
    ('jefe_compras',                'coordinacion.compras@colbeef.com'),
    ('jefe_gh',                     'coordinacion.gestionhumana@colbeef.com'),
    ('jefe_contabilidad',           'coordinacion.contabilidad@colbeef.com'),
    ('jefe_tesoreria_cartera',      'coordinacion.tesoreria@colbeef.com'),
    ('jefe_tics',                   'coordinacion.tecnologia@colbeef.com'),
    ('jefe_planeacion_financiera',  'gerencia.financiera@colbeef.com'),
    ('supervisor_vigilancia_admin', 'coordinacion.administrativo@colbeef.com'),

    -- Planta
    ('director_planta',             'gerencia.produccion@colbeef.com'),
    ('jefe_produccion',             'coordinacion.linea@colbeef.com'),
    ('jefe_calidad',                'gerencia.calidad@colbeef.com'),
    ('lider_sst',                   'siso@colbeef.com'),
    ('lider_logistica_desposte',    'coordinacion.desposte@colbeef.com'),
    ('lider_desposte_porc',         'coordinacion.desposte@colbeef.com'),
    ('supervisor_lad',              'coordinacion.calidad@colbeef.com'),

    -- Comercial y Negocios Ganaderos
    ('director_comercial',          'gerencia.comercial@colbeef.com'),
    ('director_negocios_ganaderos', 'gerencia.comercial@colbeef.com'),
    ('jefe_mercadeo',               'gerencia.comercial@colbeef.com'),
    ('jefe_servicios',              'coordinacion.corrales@colbeef.com'),
    ('compra_ganado',               'coordinacion.corrales@colbeef.com'),
    ('crecimiento_comercial',       'gerencia.comercial@colbeef.com'),
    ('supervisor_salida_cavas',     'coordinacion.subproductos@colbeef.com'),
    ('jefe_comercializador_dmc',    'gerencia.comercial@colbeef.com'),
    ('jefe_comercializador_dbo',    'gerencia.comercial@colbeef.com'),

    -- Corporativo / transversal
    ('gerencia_general_apoyo',      'gerencia.general@colbeef.com'),
    ('direccion_asuntos_corp',      'gerencia.juridica@colbeef.com'),
    ('controller',                  'gerencia.financiera@colbeef.com'),
    ('revisoria_fiscal',            'gerencia.general@colbeef.com'),
    ('oficial_cumplimiento',        'gerencia.juridica@colbeef.com'),
    ('junta_directiva',             'gerencia@colbeef.com'),

    -- Escalamiento final
    ('gerencia_general',            'gerencia.general@colbeef.com');

DROP TEMPORARY TABLE IF EXISTS cfg_escalamiento;
CREATE TEMPORARY TABLE cfg_escalamiento (
    email_solicitante VARCHAR(255) NOT NULL,
    email_aprobador   VARCHAR(255) NOT NULL,
    PRIMARY KEY (email_solicitante)
);

INSERT INTO cfg_escalamiento (email_solicitante, email_aprobador) VALUES
    -- Administrativo: jefes -> director admin
    ('coordinacion.compras@colbeef.com',        'gerencia.financiera@colbeef.com'),
    ('coordinacion.gestionhumana@colbeef.com',  'gerencia.financiera@colbeef.com'),
    ('coordinacion.contabilidad@colbeef.com',   'gerencia.financiera@colbeef.com'),
    ('coordinacion.tesoreria@colbeef.com',      'gerencia.financiera@colbeef.com'),
    ('coordinacion.tecnologia@colbeef.com',     'gerencia.financiera@colbeef.com'),
    ('coordinacion.administrativo@colbeef.com', 'gerencia.financiera@colbeef.com'),

    -- Planta: jefes/lideres -> director planta
    ('coordinacion.linea@colbeef.com',         'gerencia.produccion@colbeef.com'),
    ('coordinacion.subproductos@colbeef.com',  'gerencia.produccion@colbeef.com'),
    ('coordinacion.corrales@colbeef.com',      'gerencia.produccion@colbeef.com'),
    ('coordinacion.desposte@colbeef.com',      'gerencia.produccion@colbeef.com'),
    ('coordinacion.calidad@colbeef.com',       'gerencia.produccion@colbeef.com'),
    ('siso@colbeef.com',                       'gerencia.produccion@colbeef.com'),

    -- Comercial / Ganaderos
    ('coordinacion.corrales@colbeef.com',      'gerencia.comercial@colbeef.com'),
    ('coordinacion.subproductos@colbeef.com',  'gerencia.comercial@colbeef.com'),

    -- Corporativo
    ('gerencia.juridica@colbeef.com',      'gerencia.general@colbeef.com'),
    ('gerencia.financiera@colbeef.com',    'gerencia.general@colbeef.com'),

    -- Directores -> gerencia general
    ('gerencia.calidad@colbeef.com',       'gerencia.general@colbeef.com'),
    ('gerencia.comercial@colbeef.com',     'gerencia.general@colbeef.com'),
    ('gerencia.financiera@colbeef.com',    'gerencia.general@colbeef.com'),
    ('gerencia.produccion@colbeef.com',    'gerencia.general@colbeef.com'),

    -- Gerencia general -> junta directiva (opcional)
    ('gerencia.general@colbeef.com',       'gerencia@colbeef.com');

-- ------------------------------------------------------------
-- B) Auditoria de correos de aprobadores
-- ------------------------------------------------------------
-- B1) Correos configurados que no existen en usuario
SELECT
    'APROBADOR_NO_EXISTE_EN_USUARIO' AS tipo,
    c.clave,
    c.email
FROM cfg_aprobadores c
LEFT JOIN usuario u
       ON LOWER(TRIM(u.email)) = LOWER(TRIM(c.email))
WHERE u.id_user IS NULL
ORDER BY c.clave;

-- B2) Estado real de cada aprobador (id_user, rol, modulo permisos)
SELECT
    c.clave,
    c.email,
    u.id_user,
    u.nombre,
    u.rol,
    COALESCE(rm.visible, 0) AS permisos_visible
FROM cfg_aprobadores c
LEFT JOIN usuario u
       ON LOWER(TRIM(u.email)) = LOWER(TRIM(c.email))
LEFT JOIN rol_modulo rm
       ON rm.rol_nombre = u.rol
      AND rm.modulo_key = 'permisos'
ORDER BY c.clave;

-- ------------------------------------------------------------
-- C) Auditoria del escalamiento
-- ------------------------------------------------------------
-- C1) Filas de escalamiento con solicitante/aprobador inexistente
SELECT
    'ESCALAMIENTO_INCOMPLETO' AS tipo,
    c.email_solicitante,
    us.id_user AS id_user_solicitante,
    c.email_aprobador,
    ua.id_user AS id_user_aprobador
FROM cfg_escalamiento c
LEFT JOIN usuario us
       ON LOWER(TRIM(us.email)) = LOWER(TRIM(c.email_solicitante))
LEFT JOIN usuario ua
       ON LOWER(TRIM(ua.email)) = LOWER(TRIM(c.email_aprobador))
WHERE us.id_user IS NULL OR ua.id_user IS NULL
ORDER BY c.email_solicitante;

-- C2) Escalamiento donde solicitante y aprobador quedaron iguales (error)
SELECT
    'ESCALAMIENTO_SELF_APPROVAL' AS tipo,
    c.email_solicitante,
    c.email_aprobador
FROM cfg_escalamiento c
WHERE LOWER(TRIM(c.email_solicitante)) = LOWER(TRIM(c.email_aprobador));

-- ------------------------------------------------------------
-- D) Auditoria de asignaciones reales en empleado.id_user_encargado
-- ------------------------------------------------------------
-- D1) Activos sin aprobador asignado
SELECT
    e.area,
    COUNT(*) AS total_activos_sin_aprobador
FROM empleado e
WHERE e.estado = 'ACTIVO'
  AND e.id_user_encargado IS NULL
GROUP BY e.area
ORDER BY total_activos_sin_aprobador DESC, e.area;

-- D2) Empleados asignados a un aprobador inexistente
SELECT
    e.id_cedula,
    e.apellidos_nombre,
    e.area,
    e.id_user_encargado
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.estado = 'ACTIVO'
  AND e.id_user_encargado IS NOT NULL
  AND u.id_user IS NULL
ORDER BY e.area, e.apellidos_nombre;

-- D3) Posibles auto-aprobaciones (si el empleado tiene usuario y coincide con su encargado)
SELECT
    e.id_cedula,
    e.apellidos_nombre,
    e.area,
    us.email AS email_solicitante,
    ua.email AS email_aprobador
FROM empleado e
JOIN usuario us ON us.id_cedula = e.id_cedula
JOIN usuario ua ON ua.id_user = e.id_user_encargado
WHERE e.estado = 'ACTIVO'
  AND us.id_user = ua.id_user
ORDER BY e.area, e.apellidos_nombre;

-- D4) Resumen de cargas por aprobador
SELECT
    COALESCE(u.nombre, '(SIN APROBADOR)') AS aprobador,
    COALESCE(u.email, '-') AS email,
    COUNT(*) AS total_empleados_activos
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.estado = 'ACTIVO'
GROUP BY u.id_user, u.nombre, u.email
ORDER BY total_empleados_activos DESC, aprobador;

-- ------------------------------------------------------------
-- E) Vista rapida de areas/cargos clave para validar organigrama
-- ------------------------------------------------------------
SELECT
    e.area,
    COUNT(*) AS total_activos,
    SUM(CASE WHEN e.id_user_encargado IS NULL THEN 1 ELSE 0 END) AS sin_aprobador
FROM empleado e
WHERE e.estado = 'ACTIVO'
GROUP BY e.area
ORDER BY total_activos DESC, e.area;

-- Tip: para validar un caso puntual:
-- SELECT e.id_cedula, e.apellidos_nombre, e.area, u.nombre AS aprobador, u.email
-- FROM empleado e
-- LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
-- WHERE e.id_cedula = 'CEDULA_AQUI';

