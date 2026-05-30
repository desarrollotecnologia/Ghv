USE gestio_humana;

SELECT id_user, nombre, email, rol, estado, acciones, id_cedula
FROM usuario
WHERE id_user IN ('US-0022', 'US-0004', 'US-0024', 'US-0014', 'US-0012')
   OR email IN (
       'coordinacion.compras@colbeef.com',
       'coordinacion.gestionhumana@colbeef.com',
       'coordinacion.contabilidad@colbeef.com',
       'coordinacion.tesoreria@colbeef.com',
       'coordinacion.tecnologia@colbeef.com'
   )
ORDER BY FIELD(id_user, 'US-0022', 'US-0004', 'US-0024', 'US-0014', 'US-0012'), id_user;
