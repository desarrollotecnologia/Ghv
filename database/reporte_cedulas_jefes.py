"""Reporte: jefes del directorio con/sin cédula vinculada."""
import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)
os.chdir(ROOT)

from dotenv import load_dotenv

load_dotenv(os.path.join(ROOT, ".env"))

import mysql.connector
from config import Config
from directorio_colbeef import DEFAULT_XLSX, load_directorio

conn = mysql.connector.connect(
    host=Config.MYSQL_HOST,
    port=Config.MYSQL_PORT,
    user=Config.MYSQL_USER,
    password=Config.MYSQL_PASSWORD,
    database=Config.MYSQL_DATABASE,
)
cur = conn.cursor(dictionary=True)

rows = load_directorio(DEFAULT_XLSX)
emails = sorted(set(r["email"] for r in rows))

print("\n=== JEFES DEL DIRECTORIO: CEDULA VINCULADA ===\n")
vinc, sin, no_user = [], [], []

for email in emails:
    cur.execute(
        """
        SELECT u.nombre, u.id_cedula, e.apellidos_nombre
        FROM usuario u
        LEFT JOIN empleado e ON e.id_cedula = u.id_cedula
        WHERE LOWER(TRIM(u.email)) = LOWER(TRIM(%s))
        ORDER BY CASE WHEN UPPER(COALESCE(u.rol, '')) = 'EMPLEADO' THEN 1 ELSE 0 END
        LIMIT 1
        """,
        (email,),
    )
    u = cur.fetchone()
    if not u:
        no_user.append(email)
        continue
    ced = (u.get("id_cedula") or "").strip()
    if ced:
        vinc.append((email, u.get("nombre"), ced, u.get("apellidos_nombre")))
    else:
        sin.append((email, u.get("nombre")))

print("CON CEDULA VINCULADA:")
for email, nom, ced, emp in vinc:
    print(f"  {ced} | {email} | {nom} | {emp or '—'}")

print(f"\nSIN CEDULA VINCULADA ({len(sin)}):")
for email, nom in sin:
    print(f"  {email} | {nom}")

print(f"\nSIN USUARIO ({len(no_user)}):")
for email in no_user:
    print(f"  {email}")

print(f"\nResumen: {len(vinc)} con cedula | {len(sin)} sin cedula | {len(no_user)} sin cuenta")

cur.close()
conn.close()
