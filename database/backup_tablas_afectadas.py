"""Respaldo puntual de las tablas afectadas por las migraciones de esta sesion.

Genera un .sql con DROP + CREATE + INSERTs (equivalente a mysqldump) para poder
restaurar si algo sale mal. Se conecta al servidor definido por argumentos/env.

Uso:
    python database/backup_tablas_afectadas.py --host 192.168.20.205
"""
import argparse
import datetime as dt
import os

import mysql.connector
from dotenv import load_dotenv

TABLAS = ["departamento", "area", "perfil_ocupacional", "profesion", "empleado", "retirado"]


def esc(val, cur):
    if val is None:
        return "NULL"
    if isinstance(val, (int, float)):
        return str(val)
    if isinstance(val, (dt.date, dt.datetime)):
        return "'" + val.isoformat(sep=" ") + "'"
    if isinstance(val, (bytes, bytearray)):
        return "0x" + val.hex()
    s = str(val).replace("\\", "\\\\").replace("'", "\\'").replace("\n", "\\n").replace("\r", "\\r")
    return "'" + s + "'"


def main():
    load_dotenv(".env")
    ap = argparse.ArgumentParser()
    ap.add_argument("--host", default=os.getenv("MYSQL_HOST", "localhost"))
    ap.add_argument("--port", type=int, default=int(os.getenv("MYSQL_PORT", "3306")))
    args = ap.parse_args()

    conn = mysql.connector.connect(
        host=args.host, port=args.port,
        user=os.getenv("MYSQL_USER"), password=os.getenv("MYSQL_PASSWORD"),
        database=os.getenv("MYSQL_DATABASE"), connection_timeout=10,
    )
    cur = conn.cursor()
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    out_path = os.path.join("database", f"backup_pre_migraciones_{stamp}.sql")

    total_rows = 0
    with open(out_path, "w", encoding="utf-8") as f:
        f.write(f"-- Respaldo tablas afectadas | {args.host}:{args.port} | {stamp}\n")
        f.write("SET FOREIGN_KEY_CHECKS=0;\n\n")
        for t in TABLAS:
            cur.execute(f"SHOW CREATE TABLE `{t}`")
            create = cur.fetchone()[1]
            f.write(f"-- ===== {t} =====\n")
            f.write(f"DROP TABLE IF EXISTS `{t}`;\n{create};\n")
            cur.execute(f"SELECT * FROM `{t}`")
            rows = cur.fetchall()
            cols = [d[0] for d in cur.description]
            col_list = ", ".join(f"`{c}`" for c in cols)
            for r in rows:
                vals = ", ".join(esc(v, cur) for v in r)
                f.write(f"INSERT INTO `{t}` ({col_list}) VALUES ({vals});\n")
            total_rows += len(rows)
            f.write(f"-- {t}: {len(rows)} filas\n\n")
        f.write("SET FOREIGN_KEY_CHECKS=1;\n")

    conn.close()
    size_kb = os.path.getsize(out_path) / 1024
    print(f"OK -> {out_path} ({total_rows} filas, {size_kb:.1f} KB)")


if __name__ == "__main__":
    main()
