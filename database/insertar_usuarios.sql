-- Inserta los usuarios en la tabla usuario (si la tabla está vacía).
-- Ejecutar en MySQL Workbench con la BD gestio_humana seleccionada.
-- Luego ejecuta: python database/seed_passwords.py

USE gestio_humana;

INSERT INTO usuario (id_user, email, nombre, rol, estado, acciones) VALUES
    ('US-0001', 'coordinacion.logistico@colbeef.com', 'CJIMENEZ', 'ADMIN', TRUE, 'TODOS LOS CAMBIOS'),
    ('US-0002', 'cjimenez1408@gmail.com', 'Y2K', 'ADMIN', TRUE, 'TODOS LOS CAMBIOS'),
    ('US-0010', 'tecnologia@colbeef.com', 'JOHAN PINTO', 'ADMIN', TRUE, 'TODOS LOS CAMBIOS'),
    ('US-0005', 'bienestarsocial@colbeef.com', 'BIENESTAR SOCIAL', 'BIENESTAR SOCIAL', TRUE, 'AGREGAR Y MODIFICAR'),
    ('US-0004', 'coordinacion.gestionhumana@colbeef.com', 'COORDINACIÓN GH', 'COORD. GH', TRUE, 'TODOS LOS CAMBIOS'),
    ('US-0003', 'gestor.contratacion@colbeef.com', 'GESTOR DE CONTRATACION', 'GESTOR DE CONTRATACION', TRUE, 'AGREGAR Y MODIFICAR'),
    ('US-0006', 'gestionhumana@colbeef.com', 'GESTOR DE NOMINA', 'GESTOR DE CONTRATACION', TRUE, 'AGREGAR Y MODIFICAR'),
    ('US-0007', 'Aux.siso@colbeef.com', 'AUXILIAR SST', 'GESTOR SST', TRUE, 'VISTA'),
    ('US-0008', 'Siso@colbeef.com', 'GESTOR SST', 'GESTOR SST', TRUE, 'VISTA'),
    ('US-0009', 'practicante.siso@colbeef.com', 'PRACTICANTE SISO', 'GESTOR SST', TRUE, 'VISTA');

-- Si sale error "Duplicate entry" es que ya existen; entonces solo ejecuta seed_passwords.py
