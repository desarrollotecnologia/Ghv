"""
_fix_fechas.py
--------------
Lista y corrige empleados con fecha_ingreso en el futuro.

Uso:
    python _fix_fechas.py          -> solo muestra los problemas
    python _fix_fechas.py --fix    -> aplica las correcciones posibles
"""

import sys
import mysql.connector
from datetime import date, datetime

conn = mysql.connector.connect(
    host='localhost', port=3306,
    user='gh_admin', password='GHC01b33f2026*',
    database='gestio_humana'
)
cur = conn.cursor(dictionary=True)
hoy = date.today()
DO_FIX = "--fix" in sys.argv


def parsear(s):
    if not s:
        return None
    if isinstance(s, (date, datetime)):
        return s if isinstance(s, date) else s.date()
    for fmt in ("%d/%m/%Y", "%d/%m/%y", "%Y-%m-%d", "%m/%d/%Y"):
        try:
            return datetime.strptime(str(s).strip(), fmt).date()
        except ValueError:
            continue
    return None


def intentar_correccion(s):
    """Intercambia día y mes (caso típico: escribieron MM/DD en vez de DD/MM)."""
    parts = str(s).strip().split("/")
    if len(parts) != 3:
        return None, None
    try:
        d, m, y = int(parts[0]), int(parts[1]), int(parts[2])
        nueva = date(y, d, m)   # d era el "mes" real, m era el "día" real
        return nueva.strftime("%d/%m/%Y"), nueva
    except (ValueError, TypeError):
        return None, None


cur.execute(
    "SELECT id_cedula, apellidos_nombre, estado, fecha_ingreso "
    "FROM empleado WHERE fecha_ingreso IS NOT NULL ORDER BY apellidos_nombre"
)
rows = cur.fetchall()

futuros = []
for r in rows:
    fi = parsear(r["fecha_ingreso"])
    if fi and fi > hoy:
        futuros.append(r)

if not futuros:
    print(f"Sin problemas — ningún empleado tiene fecha_ingreso futura (hoy: {hoy}).")
    cur.close(); conn.close(); sys.exit(0)

print(f"\n{'='*70}")
print(f"  Empleados con fecha_ingreso FUTURA — hoy es {hoy}")
print(f"{'='*70}")

corregibles = 0
tot_activos = 0
tot_inactivos = 0
for r in futuros:
    cedula   = r["id_cedula"]
    nombre   = r["apellidos_nombre"]
    estado   = str(r.get("estado") or "").strip().upper()
    fi_raw   = str(r["fecha_ingreso"]).strip()
    fi_obj   = parsear(fi_raw)
    nueva_str, nueva_obj = intentar_correccion(fi_raw)

    if estado == "ACTIVO":
        tot_activos += 1
    else:
        tot_inactivos += 1

    print(f"\n  Cédula  : {cedula}")
    print(f"  Nombre  : {nombre}")
    print(f"  Estado  : {estado or 'SIN ESTADO'}")
    print(f"  Actual  : {fi_raw}  →  {fi_obj}")

    if nueva_obj and nueva_obj <= hoy:
        print(f"  Corr.   : {nueva_str}  ✓  (se invirtió día/mes)")
        corregibles += 1
        if DO_FIX:
            cur.execute(
                "UPDATE empleado SET fecha_ingreso = %s WHERE id_cedula = %s",
                (nueva_str, cedula)
            )
            conn.commit()
            print(f"  [GUARDADO]")
    else:
        print(f"  Corr.   : no se puede corregir automáticamente — revisar manualmente")

print(f"\n{'='*70}")
print(f"  Casos activos   : {tot_activos}")
print(f"  Casos inactivos : {tot_inactivos}")
if DO_FIX:
    print(f"  Listo. {corregibles} registro(s) corregido(s).")
else:
    print(f"  {corregibles} de {len(futuros)} se pueden corregir automáticamente.")
    if corregibles:
        print(f"  Para aplicar los cambios ejecuta:")
        print(f"      python _fix_fechas.py --fix")

cur.close()
conn.close()
