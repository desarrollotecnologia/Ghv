"""
Crea usuarios de portal (rol EMPLEADO) para todos los empleados activos que aún no tienen.
Contraseña inicial: Colbeef2026* (la pueden cambiar al ingresar al portal).

Ejecutar desde la raíz del proyecto, después de migration_portal_empleado.sql:

    python database/crear_usuarios_empleados_bd.py
"""

import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(ROOT)

from dotenv import load_dotenv
load_dotenv(os.path.join(ROOT, ".env"))

import mysql.connector
from werkzeug.security import generate_password_hash

DB_CONFIG = {
    "host": os.getenv("MYSQL_HOST", "localhost"),
    "port": int(os.getenv("MYSQL_PORT", "3306")),
    "user": os.getenv("MYSQL_USER", "gh_admin"),
    "password": os.getenv("MYSQL_PASSWORD", ""),
    "database": os.getenv("MYSQL_DATABASE", "gestio_humana"),
}

PASSWORD_DEFAULT = "Colbeef2026*"


def main():
    if not DB_CONFIG["password"]:
        print("ERROR: MYSQL_PASSWORD vacío en .env")
        sys.exit(1)

    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cur = conn.cursor(dictionary=True)
    except mysql.connector.Error as e:
        print(f"ERROR al conectar: {e}")
        sys.exit(1)

    cur.execute(
        "SELECT e.id_cedula, e.apellidos_nombre, e.direccion_email FROM empleado e "
        "WHERE e.estado = 'ACTIVO' "
        "AND NOT EXISTS (SELECT 1 FROM usuario u WHERE u.id_user = CONCAT('EMP-', e.id_cedula))"
    )
    empleados = cur.fetchall()
    if not empleados:
        print("No hay empleados activos sin usuario. Nada que hacer.")
        cur.close()
        conn.close()
        return

    pass_hash = generate_password_hash(PASSWORD_DEFAULT)
    creados = 0
    for emp in empleados:
        cedula = emp["id_cedula"]
        id_user = "EMP-" + cedula
        nombre = (emp["apellidos_nombre"] or cedula).strip()
        email_raw = (emp.get("direccion_email") or "").strip()
        if email_raw:
            email = email_raw.lower()
        else:
            email = f"{cedula}@empleado.colbeef.local"

        try:
            cur.execute(
                "INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, id_cedula) "
                "VALUES (%s, %s, %s, %s, 'EMPLEADO', 1, %s)",
                (id_user, email, pass_hash, nombre, cedula),
            )
            creados += 1
            print(f"  Usuario creado: {id_user} -> {email}")
        except mysql.connector.IntegrityError as e:
            if "Duplicate entry" in str(e) and "email" in str(e).lower():
                email = f"{id_user}@empleado.colbeef.local"
                try:
                    cur.execute(
                        "INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, id_cedula) "
                        "VALUES (%s, %s, %s, %s, 'EMPLEADO', 1, %s)",
                        (id_user, email, pass_hash, nombre, cedula),
                    )
                    creados += 1
                    print(f"  Usuario creado (email alternativo): {id_user} -> {email}")
                except mysql.connector.IntegrityError:
                    print(f"  Omitido (ya existe o email duplicado): {id_user}")
            else:
                print(f"  Omitido {id_user}: {e}")

    conn.commit()
    cur.close()
    conn.close()
    print(f"\nListo. Creados {creados} usuarios. Contraseña inicial para todos: {PASSWORD_DEFAULT}")
    print("Los empleados pueden iniciar sesión con su correo y esa contraseña, y cambiarla en el portal.")


if __name__ == "__main__":
    main()
