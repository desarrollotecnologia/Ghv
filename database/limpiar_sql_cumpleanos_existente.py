"""Limpia el SQL de cumpleaños ya generado desde Excel.

Sirve cuando no está disponible el XLSX, pero sí existe
database/actualizar_cumpleanos_2026_por_nombre.sql.

Elimina:
- filas de encabezado importadas como empleado;
- UPDATEs duplicados;
- UPDATEs sin fecha valida.

Genera un SQL más seguro usando nombre + área cuando el comentario trae área.
"""
import os
import re
import unicodedata
from datetime import datetime


ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, "database", "actualizar_cumpleanos_2026_por_nombre.sql")
OUT = os.path.join(ROOT, "database", "actualizar_cumpleanos_2026_limpio.sql")


def esc(value):
    return str(value).replace("\\", "\\\\").replace("'", "''")


def strip_accents(value):
    text = str(value or "")
    text = unicodedata.normalize("NFKD", text)
    return "".join(ch for ch in text if not unicodedata.combining(ch))


def norm(value):
    text = strip_accents(value).upper()
    text = re.sub(r"[^A-Z0-9 ]+", " ", text)
    return " ".join(text.split())


def valid_fecha(value):
    try:
        datetime.strptime(value, "%d/%m/%Y")
        return True
    except ValueError:
        return False


def main():
    if not os.path.isfile(SRC):
        raise SystemExit(f"No existe {SRC}")

    comment_re = re.compile(r"^--\s*([^:]+):\s*(.*?)\s*/\s*(.*?)\s*->\s*(\d{1,2}/\d{1,2}/\d{4}|.+?)\s*$")
    rows = {}
    skipped = 0

    with open(SRC, "r", encoding="utf-8") as fh:
        for line in fh:
            match = comment_re.match(line.strip())
            if not match:
                continue
            hoja, nombre, area, fecha = [x.strip() for x in match.groups()]
            if norm(nombre) == "APELLIDOS Y NOMBRES" or norm(fecha) == "FECHA DE NACIMIENTO":
                skipped += 1
                continue
            if not valid_fecha(fecha):
                skipped += 1
                continue
            key = (norm(nombre), norm(area))
            rows.setdefault(key, (hoja, nombre, area, fecha))

    with open(OUT, "w", encoding="utf-8") as fh:
        fh.write("-- SQL limpio de cumpleaños generado desde la fuente CUMPLEAÑOS 2026\n")
        fh.write("-- Corrige fechas ambiguas copiando la fecha real de la fuente, no por heurística.\n")
        fh.write("USE gestio_humana;\nSTART TRANSACTION;\n\n")
        for hoja, nombre, area, fecha in rows.values():
            fh.write(f"-- {hoja}: {esc(nombre)} / {esc(area)} -> {fecha}\n")
            area_clause = ""
            if area:
                area_clause = f" AND UPPER(TRIM(area)) = UPPER('{esc(area)}')"
            fh.write(
                "UPDATE empleado SET fecha_nacimiento = "
                f"'{esc(fecha)}' WHERE estado = 'ACTIVO' "
                f"AND UPPER(TRIM(apellidos_nombre)) = UPPER('{esc(nombre)}')"
                f"{area_clause};\n"
            )
        fh.write("\nCOMMIT;\n")

    print(f"Generado {OUT}")
    print(f"UPDATEs limpios: {len(rows)}")
    print(f"Filas omitidas: {skipped}")


if __name__ == "__main__":
    main()
