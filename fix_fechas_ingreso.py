"""
fix_fechas_ingreso.py
---------------------
Detecta empleados cuya fecha_ingreso está almacenada en el futuro y los lista.
Si se pasa --fix, intenta corregirlos invirtiendo día/mes (caso típico: alguien
escribió MM/DD/AAAA en vez de DD/MM/AAAA).

Uso:
    python fix_fechas_ingreso.py          # solo lista los afectados
    python fix_fechas_ingreso.py --fix    # corrige y muestra los cambios
"""

import sys
import mysql.connector
from datetime import date, datetime
from dotenv import load_dotenv
import os

load_dotenv()

conn = mysql.connector.connect(
    host=os.getenv("MYSQL_HOST", "localhost"),
    port=int(os.getenv("MYSQL_PORT", 3306)),
    user=os.getenv("MYSQL_USER", "root"),
    password=os.getenv("MYSQL_PASSWORD", ""),
    database=os.getenv("MYSQL_DATABASE", "gestio_humana"),
)
cur = conn.cursor(dictionary=True)

hoy = date.today()
DO_FIX = "--fix" in sys.argv


def parse(s):
    if not s:
        return None
    if isinstance(s, date):
        return s
    s = str(s).strip()
    for fmt in ("%d/%m/%Y", "%d/%m/%y", "%Y-%m-%d", "%d-%m-%Y", "%d-%m-%y"):
        try:
            return datetime.strptime(s, fmt).date()
        except ValueError:
            continue
    return None


def swap_day_month(s):
    """Intenta intercambiar día y mes en una cadena DD/MM/AAAA → MM/DD/AAAA resuelta como DD/MM/AAAA."""
    if not s:
        return None
    parts = str(s).strip().split("/")
    if len(parts) != 3:
        return None
    try:
        d, m, y = int(parts[0]), int(parts[1]), int(parts[2])
        # Intercambiamos: el día original pasa a mes y viceversa
        nueva = date(y, d, m)  # d era "mes" real, m era "día" real
        return nueva.strftime("%d/%m/%Y"), nueva
    except (ValueError, TypeError):
        return None


cur.execute("SELECT id_cedula, apellidos_nombre, fecha_ingreso FROM empleado ORDER BY apellidos_nombre")
rows = cur.fetchall()

problemas = []
for r in rows:
    fi = parse(r["fecha_ingreso"])
    if fi and fi > hoy:
        problemas.append(r)

if not problemas:
    print("No se encontraron empleados con fecha_ingreso futura. Todo está bien.")
    cur.close()
    conn.close()
    sys.exit(0)

print(f"{'='*70}")
print(f"  Empleados con fecha_ingreso FUTURA ({hoy}):")
print(f"{'='*70}")

for r in problemas:
    cedula = r["id_cedula"]
    nombre = r["apellidos_nombre"]
    fi_raw = r["fecha_ingreso"]
    fi_obj = parse(fi_raw)

    swap = swap_day_month(fi_raw)
    if swap:
        nueva_str, nueva_obj = swap
        valida = nueva_obj <= hoy
        sugerencia = f"  → sugerencia: {nueva_str}" + (" (ok)" if valida else " (TAMBIÉN futura, revisar manualmente)")
    else:
        nueva_str = None
        valida = False
        sugerencia = "  → no se puede corregir automáticamente, revisar manualmente"

    print(f"\n  Cédula : {cedula}")
    print(f"  Nombre : {nombre}")
    print(f"  Actual : {fi_raw}  ({fi_obj})")
    print(sugerencia)

    if DO_FIX and nueva_str and valida:
        cur.execute(
            "UPDATE empleado SET fecha_ingreso = %s WHERE id_cedula = %s",
            (nueva_str, cedula),
        )
        conn.commit()
        print(f"  [CORREGIDO] → {nueva_str}")

if not DO_FIX:
    print(f"\n{'='*70}")
    print("  Para corregir automáticamente los casos válidos ejecuta:")
    print("      python fix_fechas_ingreso.py --fix")
    print("  Los casos marcados 'revisar manualmente' NO se tocarán.")

cur.close()
conn.close()
