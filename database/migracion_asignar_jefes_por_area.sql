-- ============================================================
-- MIGRACION: Asignar jefe inmediato (id_user_encargado) por AREA
-- Fecha: 2026-04-18
--
-- Este script recorre las areas de los empleados activos y les
-- asigna automaticamente su jefe inmediato (encargado) segun
-- el mapeo confirmado por Colbeef.
--
-- Requisitos previos (YA EJECUTADOS):
--   1) database/migracion_encargado_empleado.sql   -> crea la columna
--   2) database/migracion_jefes_inmediatos.sql     -> crea los 18 jefes
--
-- Seguridad:
--   - Usa SUBQUERY por email para ser robusto a cambios de id_user.
--   - Solo afecta empleado.estado='ACTIVO' (los retirados quedan intactos).
--   - Si un jefe no existe en la tabla usuario, el UPDATE no hace nada
--     para esos empleados (id_user_encargado queda en NULL).
--
-- Para sobrescribir asignaciones previas, se usa UPDATE directo.
-- Si quisieras preservar las ya asignadas, agrega:  AND id_user_encargado IS NULL
-- ============================================================
USE gestio_humana;

START TRANSACTION;

-- ---------- GRUPO 1: Produccion - Sacrificio y Subproductos ----------
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.linea@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area='LINEA DE SACRIFICIO';

-- Excepcion puntual: ROMERO PEDRAZA SERGIO OMAR, Jefe Produccion,
-- reporta a Gerencia Calidad para sus propias solicitudes.
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='gerencia.calidad@colbeef.com' LIMIT 1)
WHERE id_cedula = '1098738467';

UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.subproductos@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area='SUBPRODUCTOS COMESTIBLES';

-- Excepcion puntual: RINCON BOTELLO YERSON JAVIER, Lider Beneficio,
-- reporta a Jefe Produccion para sus propias solicitudes.
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.linea@colbeef.com' LIMIT 1)
WHERE id_cedula = '1127947335';

-- ---------- GRUPO 2: Corrales ----------
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.corrales@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area='RECEPCION Y PESAJE';

-- ---------- GRUPO 3: Desposte ----------
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='desposte@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area IN (
    'LINEA DESPOSTE',
    'LAVANDERIA DESPOSTE',
    'PORCIONADO',
    'PRODUCCION DESPOSTE',
    'CALIDAD DESPOSTE',
    'L&D DESPOSTE',
    'L\\&D DESPOSTE',
    'MTTO DESPOSTE'
);

-- Excepcion puntual: VARGAS DURAN ROBINSON, lider de Desposte,
-- reporta a Jefe Produccion para sus propias solicitudes.
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.linea@colbeef.com' LIMIT 1)
WHERE id_cedula = '91477701';

-- ---------- GRUPO 4: Produccion General (gerencia produccion) ----------
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='gerencia.produccion@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area IN (
    'MANTENIMIENTO',
    'LAVANDERIA',
    'DIRECCION PRODUCCION'
);

-- ---------- GRUPO 5: Calidad ----------
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.calidad@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area='LIMPIEZA Y DESINFECCION';

UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='gerencia.calidad@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area IN (
    'PTAR',
    'PTAP',
    'AMBIENTAL',
    'INVIMA',
    'DIRECCION DPTO CALIDAD'
);

-- Si el Jefe Calidad tiene empleado vinculado, reporta a Gerencia Calidad
-- para sus propias solicitudes.
UPDATE empleado e
JOIN usuario u ON u.id_cedula = e.id_cedula
SET e.id_user_encargado = (SELECT id_user FROM usuario WHERE email='gerencia.calidad@colbeef.com' LIMIT 1)
WHERE u.id_user = 'US-0028'
  AND COALESCE(u.id_cedula, '') <> '';

-- ---------- GRUPO 6: Administrativo / Financiero ----------
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.tecnologia@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area='TECNOLOGIA';

-- Excepcion puntual: CORREA MANRIQUE LEONARDO reporta a LARA LUNA LEONARDO LUIS.
UPDATE empleado
SET id_user_encargado = 'US-0012'
WHERE id_cedula = '1100891753';

UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.tesoreria@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area='TESORERIA';

UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.contabilidad@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area='CONTABILIDAD';

UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.compras@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area='COMPRAS';

-- Excepcion puntual: REYES NOREÑA BAIRON SHTIK, coordinador de Compras,
-- reporta a Gerencia Financiera para sus propias solicitudes.
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='gerencia.financiera@colbeef.com' LIMIT 1)
WHERE id_cedula = '1098698851';

-- Jefes administrativos priorizados reportan al Director Administrativo Financiero.
UPDATE empleado e
JOIN usuario u ON u.id_cedula = e.id_cedula
SET e.id_user_encargado = (SELECT id_user FROM usuario WHERE email='gerencia.financiera@colbeef.com' LIMIT 1)
WHERE u.id_user IN ('US-0022', 'US-0004', 'US-0024', 'US-0014', 'US-0012')
  AND COALESCE(u.id_cedula, '') <> '';

UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='gerencia.financiera@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area IN ('ADMINISTRACION', 'JARDINERIA');

UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='gerencia.financiera@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area='DIRECCION ADMON Y FINANCIERA';

-- ---------- GRUPO 7: Logistica ----------
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.logistico@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area IN ('LOGISTICA', 'LOGISTICA DESPOSTE');

-- Excepcion puntual: BARAJAS MAYORGA WILMER DARIO, lider de Logistica,
-- reporta a Jefe Produccion para sus propias solicitudes.
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.linea@colbeef.com' LIMIT 1)
WHERE id_cedula = '1095807041';

-- Lideres operativos reportan al Jefe Produccion para sus propias solicitudes.
UPDATE empleado e
JOIN usuario u ON u.id_cedula = e.id_cedula
SET e.id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.linea@colbeef.com' LIMIT 1)
WHERE u.id_user IN ('US-0011', 'US-0026', 'US-0001', 'US-0027')
  AND COALESCE(u.id_cedula, '') <> '';

-- ---------- GRUPO 8: Juridica / Gestion Humana ----------
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='gerencia.juridica@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area IN (
    'DIRECCION DPTO JURIDICO Y GESTION HUMANA',
    'GESTION HUMANA'
);

-- Excepcion puntual: FERNANDEZ GOMEZ SAID JULIAN reporta a Coordinacion Juridica.
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='coordinacion.juridica@colbeef.com' LIMIT 1)
WHERE id_cedula = '1098752811';

-- ---------- GRUPO 9: Comercial ----------
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='gerencia.comercial@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area IN (
    'DIRECCION DPTO COMERCIAL',
    'MERCADEO',
    'SURTIDORES'
);

-- ---------- GRUPO 10: Gerencia General (engloba varias areas transversales) ----------
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='gerencia.general@colbeef.com' LIMIT 1)
WHERE estado='ACTIVO' AND area IN (
    'GERENCIA',
    'ACCIONISTAS',
    'CONTROL INTERNO',
    'FOMENTO GANADERO',
    'PLANEACION'
);

-- Excepcion puntual: RODRIGUEZ RUIZ ALEXANDER, jefe de Proyectos,
-- reporta a Gerencia Financiera para sus propias solicitudes.
UPDATE empleado
SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='gerencia.financiera@colbeef.com' LIMIT 1)
WHERE id_cedula = '1098665901';

-- ============================================================
-- VERIFICACION: cuantos empleados activos quedaron asignados
-- por cada jefe + cuantos quedaron SIN jefe
-- ============================================================

SELECT
    COALESCE(u.nombre, '(SIN JEFE ASIGNADO)') AS jefe_inmediato,
    COALESCE(u.email, '-')                   AS email_jefe,
    COUNT(*)                                 AS total_empleados_activos
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.estado = 'ACTIVO'
GROUP BY u.id_user, u.nombre, u.email
ORDER BY total_empleados_activos DESC;

-- Listar areas que quedaron SIN jefe (revisar si hay tipeos raros)
SELECT
    e.area                   AS area_sin_asignar,
    COUNT(*)                 AS empleados_activos
FROM empleado e
WHERE e.estado = 'ACTIVO'
  AND e.id_user_encargado IS NULL
GROUP BY e.area
ORDER BY empleados_activos DESC;

COMMIT;

-- ============================================================
-- NOTAS FINALES
-- ============================================================
-- 1) Si en la ultima consulta (areas sin asignar) aparece alguna area
--    que SI debia tener jefe, probablemente es por tipeo (ej. acento,
--    "LyD" vs "L&D"). Avisame con el nombre exacto y lo agrego.
--
-- 2) Si luego contratas a alguien en un area nueva, al crear el
--    empleado desde /personal-activo/nuevo ya puedes elegirle el
--    encargado manualmente desde el dropdown del formulario.
--
-- 3) Para cambiar el encargado de UN empleado puntual:
--    UPDATE empleado SET id_user_encargado = (SELECT id_user FROM usuario WHERE email='...') WHERE id_cedula='...';
-- ============================================================
