-- Elimina filas duplicadas en incidencia_at dejando una por (numero_registro, fecha_accidente, cedula).
-- Mantiene la fila con el id más bajo de cada grupo.

USE gestio_humana;

-- Necesario en MySQL Workbench (safe update mode)
SET SQL_SAFE_UPDATES = 0;

DELETE t1
FROM incidencia_at t1
INNER JOIN incidencia_at t2
  ON COALESCE(t1.numero_registro, 0) = COALESCE(t2.numero_registro, 0)
  AND COALESCE(t1.fecha_accidente, '1900-01-01') = COALESCE(t2.fecha_accidente, '1900-01-01')
  AND COALESCE(t1.cedula, '') = COALESCE(t2.cedula, '')
  AND t1.id > t2.id;

SET SQL_SAFE_UPDATES = 1;

-- Resultado: queda una sola fila por combinación (numero_registro, fecha_accidente, cedula).
