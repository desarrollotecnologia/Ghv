# -*- coding: utf-8 -*-
"""Carga el catálogo CIE-10 (español) completo en la tabla cie10_catalogo.

Fuente: cie10_catalogo.csv (repo verasativa/CIE-10, español). Se importan las
categorías (nivel 2, p.ej. 'H90') y subcategorías (niveles 3-5, p.ej. 'G130' que
se normaliza a 'G13.0'). Los rangos de capítulo/bloque (niveles 0-1) se omiten.

Uso:
    python scripts/importar_cie10_catalogo.py [ruta_csv]
"""
import csv
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import app  # noqa: E402

_RE = re.compile(r"^[A-Z]\d{2}")


def normalizar(code):
    """'G130' -> 'G13.0', 'H90' -> 'H90'. None si no es un código válido."""
    if not code:
        return None
    c = code.strip().upper()
    if "-" in c or len(c) < 3 or not _RE.match(c):
        return None
    return c if len(c) == 3 else c[:3] + "." + c[3:]


def main():
    ruta = sys.argv[1] if len(sys.argv) > 1 else str(Path(__file__).resolve().parents[1] / "cie10_catalogo.csv")
    app.execute(
        "CREATE TABLE IF NOT EXISTS cie10_catalogo ("
        "codigo VARCHAR(10) PRIMARY KEY, "
        "descripcion VARCHAR(500) NOT NULL"
        ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci"
    )
    registros = {}
    with open(ruta, encoding="utf-8", newline="") as f:
        for row in csv.DictReader(f):
            if (row.get("level") or "") in ("0", "1"):
                continue
            cod = normalizar(row.get("code"))
            desc = (row.get("description") or "").strip()
            if cod and desc:
                registros[cod] = desc[:500]  # dedup: última descripción gana

    datos = list(registros.items())
    conn = app.get_db()
    cur = conn.cursor()
    cur.executemany(
        "INSERT INTO cie10_catalogo (codigo, descripcion) VALUES (%s, %s) "
        "ON DUPLICATE KEY UPDATE descripcion=VALUES(descripcion)",
        datos,
    )
    conn.commit()
    cur.close()
    conn.close()
    total = app.query("SELECT COUNT(*) c FROM cie10_catalogo", one=True)
    print(f"Importados/actualizados: {len(datos)}. Total en tabla: {total['c']}")


if __name__ == "__main__":
    main()
