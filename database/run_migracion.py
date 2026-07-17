"""Ejecuta uno o varios archivos .sql contra el servidor MySQL.

- Divide por ';' respetando comillas y comentarios.
- Muestra el resultado de los SELECT (consultas de verificacion).
- Hace commit al final de cada archivo; si algo falla, hace rollback de ese archivo.

Uso:
    python database/run_migracion.py --host 192.168.20.205 database/migracion_X.sql [otro.sql ...]
"""
import argparse
import os
import sys

import mysql.connector
from dotenv import load_dotenv


def split_statements(sql):
    stmts, buf = [], []
    i, n = 0, len(sql)
    in_s = in_d = in_bt = False
    while i < n:
        c = sql[i]
        nxt = sql[i + 1] if i + 1 < n else ""
        if not (in_s or in_d or in_bt):
            if c == "-" and nxt == "-":  # line comment
                j = sql.find("\n", i)
                i = n if j == -1 else j
                continue
            if c == "/" and nxt == "*":  # block comment
                j = sql.find("*/", i + 2)
                i = n if j == -1 else j + 2
                continue
        if c == "'" and not (in_d or in_bt):
            in_s = not in_s
        elif c == '"' and not (in_s or in_bt):
            in_d = not in_d
        elif c == "`" and not (in_s or in_d):
            in_bt = not in_bt
        if c == ";" and not (in_s or in_d or in_bt):
            stmt = "".join(buf).strip()
            if stmt:
                stmts.append(stmt)
            buf = []
        else:
            buf.append(c)
        i += 1
    tail = "".join(buf).strip()
    if tail:
        stmts.append(tail)
    return stmts


def run_file(cur, conn, path):
    with open(path, "r", encoding="utf-8") as f:
        sql = f.read()
    stmts = split_statements(sql)
    print(f"\n=== {os.path.basename(path)} ({len(stmts)} sentencias) ===")
    for idx, st in enumerate(stmts, 1):
        cur.execute(st)
        low = st.lstrip().lower()
        if low.startswith("select") or low.startswith("show"):
            rows = cur.fetchall()
            cols = [d[0] for d in cur.description] if cur.description else []
            print(f"  [{idx}] {' | '.join(cols)}")
            for r in rows[:50]:
                print("      " + " | ".join("NULL" if v is None else str(v) for v in r))
            if len(rows) > 50:
                print(f"      ... ({len(rows)} filas)")
        else:
            # drenar resultados si los hubiera
            try:
                cur.fetchall()
            except mysql.connector.InterfaceError:
                pass
    conn.commit()
    print(f"  -> COMMIT OK ({os.path.basename(path)})")


def main():
    load_dotenv(".env")
    ap = argparse.ArgumentParser()
    ap.add_argument("--host", default=os.getenv("MYSQL_HOST", "localhost"))
    ap.add_argument("--port", type=int, default=int(os.getenv("MYSQL_PORT", "3306")))
    ap.add_argument("files", nargs="+")
    args = ap.parse_args()

    conn = mysql.connector.connect(
        host=args.host, port=args.port,
        user=os.getenv("MYSQL_USER"), password=os.getenv("MYSQL_PASSWORD"),
        database=os.getenv("MYSQL_DATABASE"), connection_timeout=15,
    )
    cur = conn.cursor()
    for path in args.files:
        try:
            run_file(cur, conn, path)
        except Exception as e:  # noqa: BLE001
            conn.rollback()
            print(f"  !! ERROR en {os.path.basename(path)}: {e}")
            print("  -> ROLLBACK de este archivo. Deteniendo.")
            conn.close()
            sys.exit(1)
    conn.close()
    print("\nTODAS LAS MIGRACIONES EJECUTADAS.")


if __name__ == "__main__":
    main()
