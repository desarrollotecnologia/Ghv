USE gestio_humana;

SELECT id_user, nombre, email, rol, estado, acciones, id_cedula
FROM usuario
WHERE id_user IN ('US-0027', 'EMP-91477701')
   OR id_cedula = '91477701'
ORDER BY id_user;

SELECT
    e.id_cedula,
    e.apellidos_nombre AS empleado,
    e.area,
    e.id_user_encargado,
    u.nombre AS jefe_nombre,
    u.email AS jefe_email,
    u.rol AS jefe_rol
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.id_cedula = '91477701';

SELECT
    COALESCE(u.nombre, '(SIN JEFE)') AS jefe_desposte,
    COALESCE(u.email, '-') AS email_jefe,
    COUNT(*) AS empleados_activos_desposte
FROM empleado e
LEFT JOIN usuario u ON u.id_user = e.id_user_encargado
WHERE e.estado = 'ACTIVO'
  AND e.area IN (
      'LINEA DESPOSTE',
      'LAVANDERIA DESPOSTE',
      'PORCIONADO',
      'PRODUCCION DESPOSTE',
      'CALIDAD DESPOSTE',
      'L&D DESPOSTE',
      'L\\&D DESPOSTE',
      'MTTO DESPOSTE'
  )
GROUP BY u.id_user, u.nombre, u.email
ORDER BY empleados_activos_desposte DESC;
