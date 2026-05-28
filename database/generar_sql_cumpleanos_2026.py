"""Genera SQL por nombre desde CUMPLEAÑOS 2026.xlsx, sin conectar a MySQL."""
from datetime import date, datetime
from openpyxl import load_workbook


XLSX = r"C:\Users\USUARIO\Downloads\CUMPLEAÑOS 2026.xlsx"
OUT = r"c:\Users\USUARIO\Documents\app_ghv\database\actualizar_cumpleanos_2026_por_nombre.sql"


def esc(value):
    return str(value).replace("\\", "\\\\").replace("'", "''")


def fdate(value):
    if isinstance(value, datetime):
        return value.strftime("%d/%m/%Y")
    if isinstance(value, date):
        return value.strftime("%d/%m/%Y")
    return str(value).strip()


def main():
    wb = load_workbook(XLSX, data_only=True, read_only=True)
    rows = []
    for ws in wb.worksheets:
        header = None
        start = None
        for i, row in enumerate(ws.iter_rows(values_only=True), start=1):
            vals = [str(x).strip().upper() if x is not None else "" for x in row]
            if "APELLIDOS Y NOMBRES" in vals and "FECHA DE NACIMIENTO" in vals:
                header = {name: idx for idx, name in enumerate(vals)}
                start = i + 1
                break
        if not header:
            continue
        for row in ws.iter_rows(min_row=start, values_only=True):
            nombre = row[header["APELLIDOS Y NOMBRES"]]
            fecha = row[header["FECHA DE NACIMIENTO"]]
            area = row[header.get("AREA", -1)] if "AREA" in header else None
            if nombre and fecha:
                rows.append((str(nombre).strip(), str(area or "").strip(), fdate(fecha), ws.title))
    wb.close()

    with open(OUT, "w", encoding="utf-8") as fh:
        fh.write("-- Actualiza fecha_nacimiento usando CUMPLEAÑOS 2026.xlsx como fuente correcta\n")
        fh.write("-- Ejecutar en MySQL Workbench sobre gestio_humana.\n")
        fh.write("USE gestio_humana;\nSTART TRANSACTION;\n\n")
        for nombre, area, fecha, hoja in rows:
            fh.write(f"-- {hoja}: {esc(nombre)} / {esc(area)} -> {fecha}\n")
            fh.write(
                "UPDATE empleado SET fecha_nacimiento = "
                f"'{esc(fecha)}' WHERE estado = 'ACTIVO' "
                f"AND UPPER(TRIM(apellidos_nombre)) = UPPER('{esc(nombre)}');\n"
            )
        fh.write("\nCOMMIT;\n")
    print(f"Generado {OUT} con {len(rows)} UPDATEs.")


if __name__ == "__main__":
    main()
