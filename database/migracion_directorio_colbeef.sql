-- ============================================================
-- Directorio Colbeef: área → jefe inmediato (oficial)
-- Fuente: database/Directorio_Colbeef.xlsx
--
-- Preferir aplicar con:
--   python database/aplicar_directorio_colbeef.py
--
-- Eso crea usuarios JEFE INMEDIATO faltantes y asigna encargados.
-- Clave inicial nuevos usuarios: Colbeef2026*
-- ============================================================
USE gestio_humana;

-- Ver estado actual vs directorio (empleados activos sin jefe)
SELECT e.area, COUNT(*) AS sin_jefe
FROM empleado e
WHERE e.estado = 'ACTIVO'
  AND (e.id_user_encargado IS NULL OR TRIM(e.id_user_encargado) = '')
GROUP BY e.area
ORDER BY sin_jefe DESC;

-- Aplicación completa: ejecutar aplicar_directorio_colbeef.py desde el proyecto.
