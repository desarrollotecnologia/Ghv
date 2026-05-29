"""
Sincroniza usuarios de portal (rol EMPLEADO) para todos los empleados activos.

Garantiza que cada empleado ACTIVO tenga una cuenta:
    id_user = EMP-<cedula>
    rol = EMPLEADO
    estado = 1
    id_cedula = <cedula>

Si la cuenta no existe, la crea con contraseña inicial Colbeef2026* y obliga
cambio de clave al ingresar. Si ya existe, la reactiva y corrige rol/vinculo,
pero no cambia su contraseña salvo que no tenga password_hash.

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


def column_exists(cur, table, column):
    cur.execute(
        "SELECT COUNT(*) AS c "
        "FROM INFORMATION_SCHEMA.COLUMNS "
        "WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = %s AND COLUMN_NAME = %s",
        (table, column),
    )
    row = cur.fetchone()
    return bool(row and row.get("c"))


def email_disponible(cur, email, id_user):
    if not email:
        return False
    cur.execute(
        "SELECT id_user FROM usuario WHERE LOWER(email) = LOWER(%s) AND id_user <> %s LIMIT 1",
        (email, id_user),
    )
    return cur.fetchone() is None


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

    tiene_debe_cambiar = column_exists(cur, "usuario", "debe_cambiar_clave")
    tiene_id_cedula = column_exists(cur, "usuario", "id_cedula")

    usuario_cedula_select = "u.id_cedula AS usuario_cedula" if tiene_id_cedula else "NULL AS usuario_cedula"
    cur.execute(
        "SELECT e.id_cedula, e.apellidos_nombre, e.direccion_email, "
        "u.id_user, u.email AS usuario_email, u.password_hash, u.estado AS usuario_estado, "
        f"u.rol AS usuario_rol, {usuario_cedula_select} "
        "FROM empleado e "
        "LEFT JOIN usuario u ON u.id_user = CONCAT('EMP-', e.id_cedula) "
        "WHERE e.estado = 'ACTIVO' "
        "ORDER BY e.apellidos_nombre"
    )
    empleados = cur.fetchall()
    if not empleados:
        print("No hay empleados activos. Nada que hacer.")
        cur.close()
        conn.close()
        return

    pass_hash = generate_password_hash(PASSWORD_DEFAULT)
    creados = 0
    actualizados = 0
    sin_password = 0
    for emp in empleados:
        cedula = str(emp["id_cedula"] or "").strip()
        if not cedula:
            continue
        id_user = "EMP-" + cedula
        nombre = (emp["apellidos_nombre"] or cedula).strip()
        email_raw = (emp.get("direccion_email") or "").strip()
        email_preferido = email_raw.lower() if email_raw else ""
        email_local = f"{cedula}@empleado.colbeef.local"
        email = email_preferido if email_disponible(cur, email_preferido, id_user) else email_local

        if not emp.get("id_user"):
            cols = ["id_user", "email", "password_hash", "nombre", "rol", "estado", "acciones"]
            vals = [id_user, email, pass_hash, nombre, "EMPLEADO", 1, "VISTA"]
            if tiene_id_cedula:
                cols.append("id_cedula")
                vals.append(cedula)
            if tiene_debe_cambiar:
                cols.append("debe_cambiar_clave")
                vals.append(1)
            placeholders = ", ".join(["%s"] * len(cols))
            cur.execute(
                f"INSERT INTO usuario ({', '.join(cols)}) VALUES ({placeholders})",
                tuple(vals),
            )
            creados += 1
            print(f"  Usuario creado: {id_user} -> {email}")
            continue

        sets = ["nombre = %s", "email = %s", "rol = 'EMPLEADO'", "estado = 1", "acciones = 'VISTA'"]
        vals = [nombre, email]
        if tiene_id_cedula:
            sets.append("id_cedula = %s")
            vals.append(cedula)
        if not emp.get("password_hash"):
            sets.append("password_hash = %s")
            vals.append(pass_hash)
            sin_password += 1
            if tiene_debe_cambiar:
                sets.append("debe_cambiar_clave = 1")
        vals.append(id_user)
        cur.execute(f"UPDATE usuario SET {', '.join(sets)} WHERE id_user = %s", tuple(vals))
        if cur.rowcount:
            actualizados += 1
            print(f"  Usuario sincronizado: {id_user}")

    conn.commit()
    cur.close()
    conn.close()
    print(f"\nListo. Creados {creados} usuarios. Sincronizados {actualizados}.")
    print(f"Cuentas existentes sin contraseña corregidas: {sin_password}.")
    print(f"Contraseña inicial para cuentas nuevas: {PASSWORD_DEFAULT}")
    print("Los empleados pueden iniciar sesión con su cédula o correo y la contraseña estándar si la cuenta es nueva.")


if __name__ == "__main__":
    main()
