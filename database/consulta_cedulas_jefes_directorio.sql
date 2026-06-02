-- Cédulas vinculadas en jefes del directorio Colbeef
-- Ejecutar en MySQL Workbench o: python database/aplicar_sql_file.py database/consulta_cedulas_jefes_directorio.sql

USE gestio_humana;

SELECT
    d.email AS correo_directorio,
    d.jefe AS nombre_directorio,
    GROUP_CONCAT(DISTINCT d.area ORDER BY d.area SEPARATOR ' | ') AS areas,
    u.id_user,
    u.nombre AS nombre_usuario,
    u.rol,
    COALESCE(NULLIF(TRIM(u.id_cedula), ''), '(SIN CEDULA)') AS cedula_vinculada,
    e.apellidos_nombre AS empleado_ficha,
    e.area AS area_empleado,
    e.estado AS estado_empleado
FROM (
    SELECT DISTINCT
        LOWER(TRIM(CASE email
            WHEN 'coordinacion.logistica@colbeef.com' THEN 'coordinacion.logistico@colbeef.com'
            WHEN 'jefe.compras@colbeef.com' THEN 'coordinacion.compras@colbeef.com'
            ELSE LOWER(TRIM(email))
        END)) AS email,
        jefe,
        area
    FROM (
        SELECT 'coordinacion.calidad@colbeef.com' AS email, 'Jefe Calidad' AS jefe, 'CALIDAD DESPOSTE' AS area
        UNION SELECT 'coordinacion.lyd@colbeef.com', 'Supervisor LyD', 'L&D DESPOSTE'
        UNION SELECT 'desposte@colbeef.com', 'Lider Desposte', 'LINEA DESPOSTE'
        UNION SELECT 'gerencia.calidad@colbeef.com', 'Directora Planta', 'MTTO DESPOSTE'
        UNION SELECT 'coordinacion.logistico@colbeef.com', 'Lider Logistica', 'LOGISTICA DESPOSTE'
        UNION SELECT 'coordinacion.compras@colbeef.com', 'Jefe Compras', 'COMPRAS'
        UNION SELECT 'coordinacion.contabilidad@colbeef.com', 'Jefe Contabilidad', 'CONTABILIDAD'
        UNION SELECT 'coordinacion.tesoreria@colbeef.com', 'Jefe Tesoreria', 'TESORERIA'
        UNION SELECT 'gerencia.financiera@colbeef.com', 'Director Admin', 'ADMINISTRACION'
        UNION SELECT 'gerencia.operaciones@colbeef.com', 'Director Controller', 'CONTROL INTERNO'
        UNION SELECT 'coordinacion.ambiental@colbeef.com', 'Lider Ambiental', 'AMBIENTAL'
        UNION SELECT 'siso@colbeef.com', 'Lider SST', 'SST'
        UNION SELECT 'gerencia.comercial@colbeef.com', 'Direccion Comercial', 'DIRECCION DPTO COMERCIAL'
        UNION SELECT 'director.surtidores@colbeef.com', 'Director Negocios Ganaderos', 'FOMENTO GANADERO'
        UNION SELECT 'coordinacion.subproductos@colbeef.com', 'Lider Beneficio', 'LINEA DE SACRIFICIO'
        UNION SELECT 'coordinacion.corrales@colbeef.com', 'Lider Corrales', 'RECEPCION Y PESAJE'
        UNION SELECT 'gerencia.juridica@colbeef.com', 'Directora Asuntos corp', 'ACCIONISTAS'
        UNION SELECT 'coordinacion.gestionhumana@colbeef.com', 'Jefe GH', 'GESTION HUMANA'
        UNION SELECT 'coordinacion.tecnologia@colbeef.com', 'Jefe TICs', 'TECNOLOGIA'
    ) raw
) d
LEFT JOIN usuario u ON LOWER(TRIM(u.email)) = d.email
LEFT JOIN empleado e ON e.id_cedula = u.id_cedula
GROUP BY d.email, d.jefe, u.id_user, u.nombre, u.rol, u.id_cedula, e.apellidos_nombre, e.area, e.estado
ORDER BY
    CASE WHEN COALESCE(TRIM(u.id_cedula), '') = '' THEN 1 ELSE 0 END,
    d.email;

-- Todos los JEFE INMEDIATO con/sin cédula
SELECT
    u.id_user,
    u.email,
    u.nombre,
    COALESCE(NULLIF(TRIM(u.id_cedula), ''), 'SIN CEDULA') AS cedula,
    e.apellidos_nombre AS empleado,
    e.area
FROM usuario u
LEFT JOIN empleado e ON e.id_cedula = u.id_cedula
WHERE UPPER(COALESCE(u.rol, '')) = 'JEFE INMEDIATO'
ORDER BY CASE WHEN COALESCE(TRIM(u.id_cedula), '') = '' THEN 1 ELSE 0 END, u.nombre;
