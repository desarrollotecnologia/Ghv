-- ============================================================
-- MIGRACION: Permisos por estructura nueva (Admin + Planta)
-- Fecha: 2026-04-28
--
-- Objetivo:
-- 1) Garantizar que los aprobadores puedan ver el modulo "permisos".
-- 2) Asignar id_user_encargado por AREA (colaboradores).
-- 3) Definir escalamiento explicito por correo:
--      - jefes/lideres -> director del area
--      - director del area -> gerencia general
--
-- IMPORTANTE:
-- - Antes de ejecutar, ajusta los correos en los bloques CFG.
-- - Este script no cambia roles globales (solo habilita modulo permisos).
-- - Requiere que usuario.id_cedula este vinculado al empleado correspondiente.
-- ============================================================
USE gestio_humana;

START TRANSACTION;

-- ------------------------------------------------------------
-- 0) Validacion basica: columna de encargado
-- ------------------------------------------------------------
SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()
  AND TABLE_NAME = 'empleado'
  AND COLUMN_NAME = 'id_user_encargado';

-- Si la consulta anterior no devuelve filas, ejecutar antes:
-- database/migracion_encargado_empleado.sql

-- ------------------------------------------------------------
-- 1) CFG de aprobadores (ajustar correos corporativos reales)
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
    ('coordinacion_logistica',      'coordinacion.logistico@colbeef.com'),
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

-- Resolver id_user de cada aprobador por correo
DROP TEMPORARY TABLE IF EXISTS aprobadores;
CREATE TEMPORARY TABLE aprobadores AS
SELECT
    c.clave,
    c.email,
    u.id_user,
    u.rol
FROM cfg_aprobadores c
LEFT JOIN usuario u
       ON LOWER(TRIM(u.email)) = LOWER(TRIM(c.email));

-- Validar correos no encontrados en tabla usuario (debe quedar vacio)
SELECT 'APROBADOR_NO_ENCONTRADO' AS tipo, clave, email
FROM aprobadores
WHERE id_user IS NULL
ORDER BY clave;

-- ------------------------------------------------------------
-- 2) Asegurar modulo permisos visible para los roles involucrados
-- ------------------------------------------------------------
INSERT INTO rol_modulo (rol_nombre, modulo_key, visible)
SELECT DISTINCT a.rol, 'permisos', 1
FROM aprobadores a
WHERE a.id_user IS NOT NULL
  AND a.rol IS NOT NULL
ON DUPLICATE KEY UPDATE visible = VALUES(visible);

-- ------------------------------------------------------------
-- 3) Reglas por AREA (colaboradores) - ADMINISTRATIVO
-- ------------------------------------------------------------
-- Compras -> Jefe de Compras
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'jefe_compras' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('COMPRAS');

-- Gestion Humana -> Jefe GH
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'jefe_gh' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('GESTION HUMANA');

-- Contabilidad -> Jefe Contabilidad
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'jefe_contabilidad' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('CONTABILIDAD');

-- Tesoreria/Cartera -> Jefe Tesoreria y Cartera
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'jefe_tesoreria_cartera' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('TESORERIA', 'CARTERA');

-- TICs -> Jefe TICs
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'jefe_tics' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('TECNOLOGIA', 'TICS', 'TIC');

-- Planeacion financiera -> Jefe Planeacion Financiera
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'jefe_planeacion_financiera' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('PLANEACION', 'PLANEACION FINANCIERA');

-- Vigilancia/Administrativo -> Supervisor de contrato
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'supervisor_vigilancia_admin' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('ADMINISTRACION', 'SERVICIOS GENERALES', 'VIGILANCIA');

-- ------------------------------------------------------------
-- 4) Reglas por AREA (colaboradores) - PLANTA
-- ------------------------------------------------------------
-- Produccion base
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'jefe_produccion' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('LINEA DE SACRIFICIO', 'SUBPRODUCTOS COMESTIBLES', 'DIRECCION PRODUCCION');

-- Logistica base (coordinación logística)
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'coordinacion_logistica' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('LOGISTICA', 'LOGISTICA DESPOSTE');

-- Desposte / corrales asociados
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'lider_logistica_desposte' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN (
      'RECEPCION Y PESAJE',
      'LINEA DESPOSTE',
      'PRODUCCION DESPOSTE',
      'PORCIONADO',
      'LAVANDERIA DESPOSTE',
      'CALIDAD DESPOSTE',
      'L&D DESPOSTE',
      'L\\&D DESPOSTE',
      'MTTO DESPOSTE'
  );

-- Calidad y ambiental
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'jefe_calidad' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('DIRECCION DPTO CALIDAD', 'INVIMA', 'AMBIENTAL', 'PTAR', 'PTAP');

-- SST
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'lider_sst' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('SST');

-- Mantenimiento y L&D
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'supervisor_lad' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('MANTENIMIENTO', 'LAVANDERIA', 'LIMPIEZA Y DESINFECCION');

-- ------------------------------------------------------------
-- 4.1) Reglas por AREA (colaboradores) - COMERCIAL / GANADEROS
-- ------------------------------------------------------------
-- Comercial general
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'director_comercial' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('DIRECCION DPTO COMERCIAL', 'SURTIDORES');

-- Mercadeo
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'jefe_mercadeo' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('MERCADEO');

-- Negocios ganaderos / compra de ganado
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'director_negocios_ganaderos' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('FOMENTO GANADERO');

-- ------------------------------------------------------------
-- 4.2) Reglas por AREA (colaboradores) - CORPORATIVO
-- ------------------------------------------------------------
-- Control interno
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'controller' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('CONTROL INTERNO');

-- Asuntos corporativos / juridico corporativo
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'direccion_asuntos_corp' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('ASUNTOS CORPORATIVOS', 'JURIDICA', 'JURIDICO');

-- Revisoria / Cumplimiento (si estas areas existen en la BD)
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'revisoria_fiscal' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('REVISORIA FISCAL');

UPDATE empleado e
JOIN aprobadores a ON a.clave = 'oficial_cumplimiento' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('OFICIAL DE CUMPLIMIENTO');

-- Planeacion transversal de gerencia
UPDATE empleado e
JOIN aprobadores a ON a.clave = 'gerencia_general_apoyo' AND a.id_user IS NOT NULL
SET e.id_user_encargado = a.id_user
WHERE e.estado = 'ACTIVO'
  AND e.area IN ('GERENCIA', 'PLANEACION');

-- ------------------------------------------------------------
-- 5) Escalamiento por persona (jefes/lideres/directores)
--    Ajusta los correos solicitante/aprobador antes de ejecutar.
-- ------------------------------------------------------------
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
    ('coordinacion.logistico@colbeef.com',     'gerencia.produccion@colbeef.com'),
    ('coordinacion.desposte@colbeef.com',      'gerencia.produccion@colbeef.com'),
    ('coordinacion.calidad@colbeef.com',       'gerencia.produccion@colbeef.com'),
    ('siso@colbeef.com',                       'gerencia.produccion@colbeef.com'),

    -- Comercial / Ganaderos: jefaturas -> director correspondiente
    ('coordinacion.corrales@colbeef.com',      'gerencia.comercial@colbeef.com'),
    ('coordinacion.subproductos@colbeef.com',  'gerencia.comercial@colbeef.com'),

    -- Corporativo: jefaturas -> gerencia general
    ('gerencia.juridica@colbeef.com',      'gerencia.general@colbeef.com'),
    ('gerencia.financiera@colbeef.com',    'gerencia.general@colbeef.com'),

    -- Directores -> gerencia general
    ('gerencia.calidad@colbeef.com',       'gerencia.general@colbeef.com'),
    ('gerencia.comercial@colbeef.com',     'gerencia.general@colbeef.com'),
    ('gerencia.financiera@colbeef.com',    'gerencia.general@colbeef.com'),
    ('gerencia.produccion@colbeef.com',    'gerencia.general@colbeef.com'),

    -- Gerencia general -> Junta Directiva (opcional, si existe usuario Junta)
    ('gerencia.general@colbeef.com',       'gerencia@colbeef.com');

-- Aplicar escalamiento explicitamente a empleados vinculados por id_cedula
UPDATE empleado e
JOIN usuario u_s ON u_s.id_cedula = e.id_cedula
JOIN cfg_escalamiento c ON LOWER(TRIM(c.email_solicitante)) = LOWER(TRIM(u_s.email))
JOIN usuario u_a ON LOWER(TRIM(u_a.email)) = LOWER(TRIM(c.email_aprobador))
SET e.id_user_encargado = u_a.id_user
WHERE e.estado = 'ACTIVO';

-- ------------------------------------------------------------
-- 6) Verificaciones finales
-- ------------------------------------------------------------
-- A) Resumen por aprobador
SELECT
    COALESCE(u.nombre, '(SIN APROBADOR)') AS aprobador,
    COALESCE(u.email,  '-')               AS email_aprobador,
    COUNT(*)                              AS total_empleados_activos
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.estado = 'ACTIVO'
GROUP BY u.id_user, u.nombre, u.email
ORDER BY total_empleados_activos DESC;

-- B) Areas activas aun sin aprobador
SELECT
    e.area AS area_sin_asignar,
    COUNT(*) AS total
FROM empleado e
WHERE e.estado = 'ACTIVO'
  AND e.id_user_encargado IS NULL
GROUP BY e.area
ORDER BY total DESC;

-- C) Validar que todos los aprobadores tienen permisos visible por rol
SELECT DISTINCT
    a.clave,
    a.email,
    a.rol,
    rm.visible AS modulo_permisos_visible
FROM aprobadores a
LEFT JOIN rol_modulo rm
       ON rm.rol_nombre = a.rol
      AND rm.modulo_key = 'permisos'
ORDER BY a.clave;

COMMIT;

-- ============================================================
-- Recomendado despues de ejecutar:
-- 1) Revisar resultado de "APROBADOR_NO_ENCONTRADO".
-- 2) Revisar "area_sin_asignar".
-- 3) Probar 3 casos en app:
--    - colaborador comun
--    - jefe/lider
--    - director
-- ============================================================
