"""
Script para verificar y corregir fechas_ingreso mal formateadas.
Ejecutar con MySQL activo: python _fix_fechas.py
"""
import mysql.connector
from datetime import datetime, date

conn = mysql.connector.connect(
    host='localhost', port=3306,
    user='gh_admin', password='GHC01b33f2026*',
    database='gestio_humana'
)
cur = conn.cursor(dictionary=True)

# 1. Ver estado actual de CARDENAS CARDENAS
print("=" * 60)
print("ESTADO ACTUAL — CARDENAS CARDENAS (1004822805)")
print("=" * 60)
cur.execute(
    "SELECT id_cedula, apellidos_nombre, fecha_ingreso, fecha_nacimiento "
    "FROM empleado WHERE id_cedula = '1004822805'"
)
emp = cur.fetchone()
if emp:
    print(f"  Cédula        : {emp['id_cedula']}")
    print(f"  Nombre        : {emp['apellidos_nombre']}")
    print(f"  fecha_ingreso : {emp['fecha_ingreso']}  (tipo: {type(emp['fecha_ingreso']).__name__})")
    print(f"  fecha_nacimiento: {emp['fecha_nacimiento']}")
else:
    print("  Empleado no encontrado con cédula 1004822805")

# 2. Mostrar TODAS las fechas_ingreso para revisión visual
print("\n" + "=" * 60)
print("TODAS LAS FECHAS DE INGRESO (empleados activos e inactivos)")
print("=" * 60)
cur.execute(
    "SELECT id_cedula, apellidos_nombre, fecha_ingreso "
    "FROM empleado WHERE fecha_ingreso IS NOT NULL "
    "ORDER BY apellidos_nombre"
)
rows = cur.fetchall()
problemas = []
for r in rows:
    fi = r['fecha_ingreso']
    # Si es date object, convertir a string para análisis
    if isinstance(fi, (date, datetime)):
        fi_str = fi.strftime("%d/%m/%Y")
    else:
        fi_str = str(fi).strip()

    # Detectar posibles MM/DD/YYYY: si el primer número <= 12 y el segundo <= 12 es ambiguo
    parts = fi_str.replace('-', '/').split('/')
    if len(parts) == 3:
        try:
            a, b = int(parts[0]), int(parts[1])
            if a <= 12 and b <= 12 and a != b:
                flag = "⚠ AMBIGUA"
                problemas.append(r)
            elif a > 12 or b > 12:
                flag = "OK"
            else:
                flag = "OK"
        except:
            flag = "?"
    else:
        flag = "?"

    print(f"  {r['id_cedula']:<15} {r['apellidos_nombre'][:40]:<40} {fi_str}  {flag}")

# 3. Aplicar la corrección de CARDENAS: cambiar a 10/02/2026 (10 de febrero)
print("\n" + "=" * 60)
print("CORRECCIÓN — CARDENAS CARDENAS: February 10 = 10/02/2026")
print("=" * 60)

confirm = input("\n¿Actualizar fecha_ingreso de CARDENAS a '10/02/2026'? (s/n): ").strip().lower()
if confirm == 's':
    cur.execute(
        "UPDATE empleado SET fecha_ingreso = '10/02/2026' WHERE id_cedula = '1004822805'"
    )
    conn.commit()
    print("  ✓ Actualizado correctamente.")

    # Verificar
    cur.execute("SELECT fecha_ingreso FROM empleado WHERE id_cedula = '1004822805'")
    nuevo = cur.fetchone()
    print(f"  Nuevo valor en BD: {nuevo['fecha_ingreso']}")
else:
    print("  Sin cambios.")

cur.close()
conn.close()
print("\nListo.")
