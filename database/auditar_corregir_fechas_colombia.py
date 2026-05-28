"""
Audita y corrige fechas guardadas como texto para la regla Colombia DD/MM/YYYY.

Por defecto solo muestra una vista previa:
    python database/auditar_corregir_fechas_colombia.py

Para aplicar cambios:
    python database/auditar_corregir_fechas_colombia.py --apply

La correccion automatica solo invierte casos claramente guardados como MM/DD
cuando el segundo numero es mayor a 12. Ej: 05/28/2026 -> 28/05/2026.
Los casos ambiguos como 01/02/2026 se reportan, pero no se cambian sin fuente
externa porque podrian ser 1 de febrero o 2 de enero.
"""
import argparse
import os
import re
from datetime import datetime, date, timedelta

import mysql.connector
from dotenv import load_dotenv


BASE_DIR = os.path.dirname(os.path.dirname(__file__))
load_dotenv(os.path.join(BASE_DIR, ".env"))

DB_CONFIG = {
    "host": os.getenv("MYSQL_HOST", "localhost"),
    "port": int(os.getenv("MYSQL_PORT", 3306)),
    "user": os.getenv("MYSQL_USER", "gh_admin"),
    "password": os.getenv("MYSQL_PASSWORD", ""),
    "database": os.getenv("MYSQL_DATABASE", "gestio_humana"),
}

DATE_FIELDS = {
    "empleado": ("id_cedula", ["fecha_expedicion", "fecha_nacimiento", "fecha_ingreso"]),
    "hijo": ("id_hijo", ["fecha_nacimiento"]),
    "retirado": ("id_retiro", ["fecha_ingreso", "fecha_retiro"]),
}


def parse_fecha_co(value):
    if value is None:
        return None
    if isinstance(value, datetime):
        return value.date()
    if isinstance(value, date):
        return value
    if isinstance(value, (int, float)):
        try:
            if float(value) > 20000:
                return date(1899, 12, 30) + timedelta(days=int(value))
        except Exception:
            return None
    s = str(value).strip()
    if not s:
        return None
    if s.replace(".", "", 1).isdigit():
        try:
            n = float(s)
            if n > 20000:
                return date(1899, 12, 30) + timedelta(days=int(n))
        except Exception:
            pass
    if "T" in s and len(s) >= 10:
        s = s[:10]
    elif len(s) >= 10 and s[4:5] == "-" and s[7:8] == "-" and s[10:11] in (" ", "T"):
        s = s[:10]
    for fmt in ("%d/%m/%Y", "%d/%m/%y", "%d-%m-%Y", "%d-%m-%y", "%Y-%m-%d", "%Y/%m/%d"):
        try:
            return datetime.strptime(s, fmt).date()
        except ValueError:
            continue
    return None


def normalizar(value):
    raw = "" if value is None else str(value).strip()
    if not raw:
        return None, "empty"

    match = re.fullmatch(r"(\d{1,2})[/-](\d{1,2})[/-](\d{2,4})", raw)
    if match:
        a, b, y = (int(match.group(1)), int(match.group(2)), int(match.group(3)))
        if y < 100:
            y += 2000 if y < 50 else 1900
        if b > 12 and a <= 12:
            try:
                return date(y, a, b).strftime("%d/%m/%Y"), "swap_mmdd"
            except ValueError:
                return None, "invalid"
        if a <= 12 and b <= 12:
            d = parse_fecha_co(raw)
            return (d.strftime("%d/%m/%Y") if d else None), "ambiguous"

    d = parse_fecha_co(raw)
    if d:
        return d.strftime("%d/%m/%Y"), "normalize"
    return None, "invalid"


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true", help="Aplica las correcciones automaticas.")
    args = parser.parse_args()

    conn = mysql.connector.connect(**DB_CONFIG)
    cur = conn.cursor(dictionary=True)
    changes = []
    ambiguous = []
    invalid = []

    for table, (pk, fields) in DATE_FIELDS.items():
        cols = ", ".join([pk] + fields)
        cur.execute(f"SELECT {cols} FROM {table}")
        for row in cur.fetchall():
            row_id = row.get(pk)
            for field in fields:
                old = row.get(field)
                new, reason = normalizar(old)
                if reason == "empty":
                    continue
                if reason == "ambiguous":
                    ambiguous.append((table, pk, row_id, field, old, new))
                    continue
                if reason == "invalid" or not new:
                    invalid.append((table, pk, row_id, field, old))
                    continue
                if str(old).strip() != new:
                    changes.append((table, pk, row_id, field, old, new, reason))

    print(f"Correcciones automaticas encontradas: {len(changes)}")
    for item in changes[:80]:
        table, pk, row_id, field, old, new, reason = item
        print(f"  {table}.{field} {pk}={row_id}: {old!r} -> {new!r} ({reason})")
    if len(changes) > 80:
        print(f"  ... {len(changes) - 80} mas")

    print(f"\nFechas ambiguas no modificadas: {len(ambiguous)}")
    for item in ambiguous[:40]:
        table, pk, row_id, field, old, new = item
        print(f"  {table}.{field} {pk}={row_id}: {old!r} se lee como {new!r}, verificar fuente")
    if len(ambiguous) > 40:
        print(f"  ... {len(ambiguous) - 40} mas")

    print(f"\nFechas invalidas/no parseables: {len(invalid)}")
    for item in invalid[:40]:
        table, pk, row_id, field, old = item
        print(f"  {table}.{field} {pk}={row_id}: {old!r}")
    if len(invalid) > 40:
        print(f"  ... {len(invalid) - 40} mas")

    if args.apply:
        for table, pk, row_id, field, _old, new, _reason in changes:
            cur.execute(f"UPDATE {table} SET {field} = %s WHERE {pk} = %s", (new, row_id))
        conn.commit()
        print(f"\nAplicadas {len(changes)} correcciones.")
    else:
        print("\nVista previa solamente. Para aplicar: python database/auditar_corregir_fechas_colombia.py --apply")

    cur.close()
    conn.close()


if __name__ == "__main__":
    main()
