"""
Aplica el Directorio Colbeef (área → jefe inmediato).

Lee database/Directorio_Colbeef.xlsx (o respaldo embebido).
- Crea usuarios JEFE INMEDIATO si el correo no existe.
- Asigna id_user_encargado a empleados activos por área.
- Vincula id_cedula si el empleado tiene el mismo correo en direccion_email.

Uso:
    python database/aplicar_directorio_colbeef.py
    python database/aplicar_directorio_colbeef.py --dry-run
"""
import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(ROOT)
sys.path.insert(0, ROOT)

from dotenv import load_dotenv

load_dotenv(os.path.join(ROOT, ".env"))

import mysql.connector

from config import Config
from directorio_colbeef import DEFAULT_XLSX, apply_directorio


def main():
    dry_run = "--dry-run" in sys.argv
    conn = mysql.connector.connect(
        host=Config.MYSQL_HOST,
        port=Config.MYSQL_PORT,
        user=Config.MYSQL_USER,
        password=Config.MYSQL_PASSWORD,
        database=Config.MYSQL_DATABASE,
    )
    cur = conn.cursor(dictionary=True)

    def fetch_all(sql, params=None):
        cur.execute(sql, params or ())
        return cur.fetchall()

    def fetch_one(sql, params=None):
        cur.execute(sql, params or ())
        return cur.fetchone()

    def execute_fn(sql, params=None):
        cur.execute(sql, params or ())
        return cur.rowcount

    print(f"Directorio: {DEFAULT_XLSX}")
    if dry_run:
        print("MODO dry-run (sin cambios en BD)\n")

    result = apply_directorio(fetch_all, fetch_one, execute_fn, dry_run=dry_run)

    if not dry_run:
        conn.commit()

    print(f"Filas directorio: {result['total_filas']}")
    print(f"Usuarios creados ({len(result['usuarios_creados'])}):")
    for e in result["usuarios_creados"]:
        print(f"  + {e}")
    print(f"Usuarios existentes actualizados: {len(result['usuarios_actualizados'])}")
    print("\nAsignación por área:")
    for a in result["areas"]:
        print(
            f"  {a['departamento']} / {a['area']} -> {a['jefe']} ({a['email']}) "
            f"[{a['empleados']} empleado(s)]"
        )
    if result["errors"]:
        print("\nErrores:")
        for err in result["errors"]:
            print(f"  ! {err}")

    cur.close()
    conn.close()
    print("\nListo.")


if __name__ == "__main__":
    main()
