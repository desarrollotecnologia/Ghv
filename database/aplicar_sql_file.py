"""
Ejecuta un archivo .sql usando la conexión configurada en .env.

Uso desde la raíz del proyecto:
    python database/aplicar_sql_file.py database/actualizar_cumpleanos_2026_por_nombre.sql

Esto evita problemas de MySQL Workbench con SOURCE/rutas.
"""
import os
import sys

import mysql.connector
from dotenv import load_dotenv


ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
load_dotenv(os.path.join(ROOT, ".env"))


DB_CONFIG = {
    "host": os.getenv("MYSQL_HOST", "localhost"),
    "port": int(os.getenv("MYSQL_PORT", "3306")),
    "user": os.getenv("MYSQL_USER", "gh_admin"),
    "password": os.getenv("MYSQL_PASSWORD", ""),
    "database": os.getenv("MYSQL_DATABASE", "gestio_humana"),
}


def split_sql(sql_text):
    # Quitar comentarios de linea antes de partir sentencias. Si un comentario
    # queda pegado al UPDATE/INSERT, el ejecutor lo puede omitir por error.
    cleaned_lines = []
    for line in sql_text.splitlines():
        stripped = line.strip()
        if stripped.startswith("--"):
            continue
        cleaned_lines.append(line)
    sql_text = "\n".join(cleaned_lines)

    statements = []
    current = []
    in_single = False
    in_double = False
    escaped = False

    for ch in sql_text:
        current.append(ch)
        if escaped:
            escaped = False
            continue
        if ch == "\\":
            escaped = True
            continue
        if ch == "'" and not in_double:
            in_single = not in_single
        elif ch == '"' and not in_single:
            in_double = not in_double
        elif ch == ";" and not in_single and not in_double:
            stmt = "".join(current).strip()
            current = []
            if stmt:
                statements.append(stmt[:-1].strip())

    tail = "".join(current).strip()
    if tail:
        statements.append(tail)
    return [s for s in statements if s]


def main():
    if len(sys.argv) < 2:
        print("Uso: python database/aplicar_sql_file.py ruta/al/archivo.sql")
        sys.exit(1)

    sql_path = sys.argv[1]
    if not os.path.isabs(sql_path):
        sql_path = os.path.join(ROOT, sql_path)

    if not os.path.isfile(sql_path):
        print(f"ERROR: no existe el archivo SQL: {sql_path}")
        sys.exit(1)

    with open(sql_path, "r", encoding="utf-8") as f:
        sql_text = f.read()

    statements = split_sql(sql_text)
    if not statements:
        print("No hay sentencias SQL para ejecutar.")
        return

    conn = mysql.connector.connect(**DB_CONFIG)
    cursor = conn.cursor(buffered=True)

    ejecutadas = 0
    current_stmt = ""
    try:
        for index, stmt in enumerate(statements, start=1):
            if stmt.upper().startswith("USE "):
                continue
            current_stmt = stmt
            cursor.execute(stmt)
            if cursor.with_rows:
                rows = cursor.fetchall()
                if rows:
                    print(f"Resultado ({len(rows)} fila/s): {rows[:5]}")
            while cursor.nextset():
                if cursor.with_rows:
                    cursor.fetchall()
            ejecutadas += 1
        conn.commit()
    except Exception as exc:
        conn.rollback()
        print(f"ERROR ejecutando sentencia SQL #{index}:")
        print(current_stmt[:1000])
        print(f"Detalle: {exc}")
        raise
    finally:
        cursor.close()
        conn.close()

    print(f"OK: ejecutadas {ejecutadas} sentencias desde {sql_path}")


if __name__ == "__main__":
    main()
