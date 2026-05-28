"""
Vincula coordinacion.gestionhumana@colbeef.com con la ficha 1098661407
y crea usuario EMPLEADO EMP-1098661407 si no existe.

Ejecutar desde la raíz del proyecto:
    python database/vincular_cindy_gestionhumana.py
"""
import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(ROOT)
sys.path.insert(0, ROOT)

from dotenv import load_dotenv

load_dotenv(os.path.join(ROOT, ".env"))

import pymysql
from werkzeug.security import generate_password_hash

CEDULA = "1098661407"
EMAIL_COORD = "coordinacion.gestionhumana@colbeef.com"
ID_COORD = "US-0004"
ID_EMP = f"EMP-{CEDULA}"
PASSWORD_DEFAULT = "Colbeef2026*"


def main():
    conn = pymysql.connect(
        host=os.getenv("MYSQL_HOST", "localhost"),
        port=int(os.getenv("MYSQL_PORT", "3306")),
        user=os.getenv("MYSQL_USER", "gh_admin"),
        password=os.getenv("MYSQL_PASSWORD", ""),
        database=os.getenv("MYSQL_DATABASE", "gestio_humana"),
        cursorclass=pymysql.cursors.DictCursor,
    )
    cur = conn.cursor()

    cur.execute("SELECT id_cedula, apellidos_nombre, direccion_email FROM empleado WHERE id_cedula=%s", (CEDULA,))
    emp = cur.fetchone()
    if not emp:
        print(f"ERROR: no existe empleado con cédula {CEDULA}")
        sys.exit(1)
    print("Empleado:", emp)

    cur.execute("SELECT id_user, email, rol, id_cedula FROM usuario WHERE id_user=%s", (ID_COORD,))
    coord = cur.fetchone()
    if not coord:
        print(f"ERROR: no existe usuario {ID_COORD}")
        sys.exit(1)
    print("Antes COORD:", coord)

    cur.execute(
        "UPDATE usuario SET id_cedula=%s, rol='ADMIN', acciones='TODOS LOS CAMBIOS', estado=1 WHERE id_user=%s",
        (CEDULA, ID_COORD),
    )
    print(f"OK: {ID_COORD} ADMIN + cédula {CEDULA}")

    cur.execute("SELECT id_user FROM usuario WHERE id_user=%s", (ID_EMP,))
    emp_user = cur.fetchone()
    pass_hash = generate_password_hash(PASSWORD_DEFAULT)
    nombre = (emp.get("apellidos_nombre") or CEDULA).strip()
    email_emp = (emp.get("direccion_email") or "").strip().lower() or f"{ID_EMP}@empleado.colbeef.local"

    if emp_user:
        cur.execute(
            "UPDATE usuario SET id_cedula=%s, rol='EMPLEADO', estado=1, nombre=%s, "
            "acciones=NULL WHERE id_user=%s",
            (CEDULA, nombre, ID_EMP),
        )
        print(f"OK: {ID_EMP} corregido a rol EMPLEADO")
    else:
        try:
            cur.execute(
                "INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, id_cedula) "
                "VALUES (%s, %s, %s, %s, 'EMPLEADO', 1, %s)",
                (ID_EMP, email_emp, pass_hash, nombre, CEDULA),
            )
            print(f"OK: creado {ID_EMP} -> {email_emp}")
        except pymysql.IntegrityError:
            alt = f"{ID_EMP}@empleado.colbeef.local"
            cur.execute(
                "INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, id_cedula) "
                "VALUES (%s, %s, %s, %s, 'EMPLEADO', 1, %s)",
                (ID_EMP, alt, pass_hash, nombre, CEDULA),
            )
            print(f"OK: creado {ID_EMP} -> {alt}")

    cur.execute(
        "SELECT id_user FROM usuario WHERE email = %s AND estado = 1 LIMIT 1",
        ("gerencia.financiera@colbeef.com",),
    )
    jefe = cur.fetchone()
    if jefe:
        cur.execute(
            "UPDATE empleado SET id_user_encargado = %s WHERE id_cedula = %s",
            (jefe["id_user"], CEDULA),
        )
        print(f"OK: jefe inmediato = {jefe['id_user']} (gerencia.financiera@colbeef.com)")
    else:
        print("AVISO: no existe usuario gerencia.financiera@colbeef.com — asigne jefe manualmente")

    conn.commit()

    cur.execute(
        "SELECT id_user, email, rol, id_cedula FROM usuario WHERE id_user IN (%s, %s) OR id_cedula=%s ORDER BY id_user",
        (ID_COORD, ID_EMP, CEDULA),
    )
    print("\n--- Usuarios ---")
    for r in cur.fetchall():
        print(r)

    cur.execute(
        "SELECT e.id_cedula, e.apellidos_nombre, e.id_user_encargado, u.nombre, u.email "
        "FROM empleado e LEFT JOIN usuario u ON u.id_user = e.id_user_encargado WHERE e.id_cedula = %s",
        (CEDULA,),
    )
    print("\n--- Empleado + jefe ---")
    print(cur.fetchone())

    conn.close()
    print("\nCindy debe cerrar sesión y volver a entrar con coordinacion.gestionhumana@colbeef.com")


if __name__ == "__main__":
    main()
