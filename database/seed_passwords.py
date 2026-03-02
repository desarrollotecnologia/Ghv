"""
Establece contraseñas iniciales para los usuarios existentes en la tabla usuario.
Ejecutar desde la raíz del proyecto (donde está .env).

Uso:
    cd d:\\proyectos\\gestio_humana
    python database/seed_passwords.py
"""

import os
import sys

# Raíz del proyecto = carpeta que contiene "database"
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

DEFAULT_PASSWORD = "Colbeef2026*"


def main():
    if not DB_CONFIG["password"]:
        print("ERROR: MYSQL_PASSWORD está vacío en .env. Pon la contraseña de gh_admin para conectar a la BD.")
        sys.exit(1)

    try:
        conn = mysql.connector.connect(**DB_CONFIG)
    except mysql.connector.Error as e:
        print(f"ERROR al conectar a la BD: {e}")
        print("Revisa en .env: MYSQL_HOST, MYSQL_PORT, MYSQL_USER, MYSQL_PASSWORD, MYSQL_DATABASE")
        sys.exit(1)

    cursor = conn.cursor(dictionary=True)

    try:
        cursor.execute("SELECT id_user, email, nombre FROM usuario")
    except mysql.connector.Error as e:
        print(f"ERROR al leer usuarios: {e}")
        cursor.close()
        conn.close()
        sys.exit(1)

    users = cursor.fetchall()

    if not users:
        print("No se encontraron usuarios en la tabla usuario. Ejecuta antes el script de creación de BD.")
        cursor.close()
        conn.close()
        sys.exit(1)

    hashed = generate_password_hash(DEFAULT_PASSWORD)

    for u in users:
        cursor.execute(
            "UPDATE usuario SET password_hash = %s WHERE id_user = %s",
            (hashed, u["id_user"]),
        )
        print(f"  {u['id_user']} ({u['email']}) -> contraseña establecida")

    conn.commit()
    cursor.close()
    conn.close()
    print(f"\nListo: {len(users)} usuarios con contraseña: {DEFAULT_PASSWORD}")
    print("(Puedes cambiar la contraseña desde la app: Admin → Usuarios → Restablecer contraseña)")


if __name__ == "__main__":
    main()
