"""
Genera un archivo SQL con consultas INSERT a partir de los CSV/Excel exportados.
Tú ejecutas este script una vez; genera datos_insertar.sql para que lo abras
en MySQL Workbench y lo ejecutes (pegar y ejecutar).

Uso:
    python database/generar_consultas_insert.py

Requisito: tener los CSV en la carpeta indicada en CSV_DIR (por defecto Downloads).
"""

import csv
import os
import sys

# Carpeta donde están los CSV (exportados desde Excel)
CSV_DIR = os.environ.get("CSV_DIR", r"C:\Users\johan\Downloads")

# Archivos CSV (nombre lógico -> nombre de archivo)
CSV_FILES = {
    "rol": "Rol.csv",
    "tipo_documento": "Tipo_Documento.csv",
    "nivel_educativo": "Nivel_educativo.csv",
    "profesion": "Profesion.csv",
    "eps": "EPS.csv",
    "fondo_pensiones": "FondoPensiones.csv",
    "motivo_retiro": "Motivos_Retiros.csv",
    "departamento": "BDatos_APPGH - Departamento.csv",
    "area": "Area.csv",
    "perfil_ocupacional": "Perfil_Ocupacional.csv",
    "menu": "Menu.csv",
    "usuario": "User.csv",
    "dbase": "BDatos_APPGH - DBase.csv",
    "hijos": "BDatos_APPGH - Hijos.csv",
    "retirados": "BDatos_APPGH - Retirados.csv",
}

# Salida: archivo SQL en la misma carpeta database
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
OUTPUT_SQL = os.path.join(SCRIPT_DIR, "datos_insertar.sql")


def path_for(key):
    return os.path.join(CSV_DIR, CSV_FILES[key])


def read_csv(key):
    filepath = path_for(key)
    if not os.path.isfile(filepath):
        return None, []
    rows = []
    with open(filepath, "r", encoding="utf-8-sig") as f:
        reader = csv.DictReader(f)
        for row in reader:
            rows.append(row)
    return filepath, rows


def clean(val):
    if val is None:
        return None
    val = str(val).strip()
    return val if val and val.lower() not in ("none", "nan") else None


def sql_escape(s):
    if s is None:
        return "NULL"
    s = str(s).replace("\\", "\\\\").replace("'", "''")
    return f"'{s}'"


def sql_int(val):
    if val is None or (isinstance(val, str) and not val.strip()):
        return "NULL"
    try:
        return str(int(float(val)))
    except (ValueError, TypeError):
        return "NULL"


def write_header(f):
    f.write("-- Consultas INSERT generadas desde los CSV para ejecutar en MySQL.\n")
    f.write("-- Orden: catálogos, departamento, área, perfil, menu, usuario, empleado, hijo, retirado.\n\n")
    f.write("USE gestio_humana;\n\n")


def write_rol(f):
    _, rows = read_csv("rol")
    if not rows:
        return
    col = "Rol" if "Rol" in (rows[0] or {}) else next((k for k in rows[0] if "ol" in k.lower()), None)
    if not col:
        return
    vals = [f"({sql_escape(clean(r.get(col)))})" for r in rows if clean(r.get(col))]
    if not vals:
        return
    f.write("-- Rol\n")
    f.write("INSERT IGNORE INTO rol (nombre) VALUES\n  ")
    f.write(",\n  ".join(vals))
    f.write(";\n\n")


def write_tipo_documento(f):
    _, rows = read_csv("tipo_documento")
    if not rows:
        return
    # Posibles nombres de columna
    id_col = next((k for k in rows[0] if "id" in k.lower() and "tipo" in k.lower()), "id_tipo_documento")
    tipo_col = next((k for k in rows[0] if "tipo" in k.lower() and "documento" in k.lower()), "tipo_documento")
    vals = []
    for r in rows:
        id_val = clean(r.get(id_col) or r.get("id_tipodocuemnto") or r.get("id_tipo_documento"))
        nom = clean(r.get(tipo_col) or r.get("tipo_documento"))
        if id_val and nom:
            vals.append(f"({sql_escape(id_val)}, {sql_escape(nom)})")
    if not vals:
        return
    f.write("-- Tipo documento\n")
    f.write("INSERT IGNORE INTO tipo_documento (id_tipo_documento, tipo_documento) VALUES\n  ")
    f.write(",\n  ".join(vals))
    f.write(";\n\n")


def write_nivel_educativo(f):
    _, rows = read_csv("nivel_educativo")
    if not rows:
        return
    id_col = next((k for k in rows[0] if "id" in k.lower()), "id_nivel")
    niv_col = next((k for k in rows[0] if "nivel" in k.lower()), "Nivel")
    vals = []
    for r in rows:
        id_val = clean(r.get(id_col))
        niv = clean(r.get(niv_col))
        if id_val and niv:
            vals.append(f"({sql_escape(id_val)}, {sql_escape(niv)})")
    if not vals:
        return
    f.write("-- Nivel educativo\n")
    f.write("INSERT IGNORE INTO nivel_educativo (id_nivel, nivel) VALUES\n  ")
    f.write(",\n  ".join(vals))
    f.write(";\n\n")


def write_profesion(f):
    _, rows = read_csv("profesion")
    if not rows:
        return
    id_col = next((k for k in rows[0] if "id" in k.lower()), "id_profesion")
    pro_col = next((k for k in rows[0] if "profesion" in k.lower()), "Profesion")
    vals = []
    for r in rows:
        id_val = clean(r.get(id_col))
        pro = clean(r.get(pro_col))
        if id_val and pro:
            vals.append(f"({sql_escape(id_val)}, {sql_escape(pro)})")
    if not vals:
        return
    f.write("-- Profesión\n")
    f.write("INSERT IGNORE INTO profesion (id_profesion, profesion) VALUES\n  ")
    f.write(",\n  ".join(vals))
    f.write(";\n\n")


def write_eps(f):
    _, rows = read_csv("eps")
    if not rows:
        return
    col = next((k for k in rows[0] if "eps" in k.lower()), "EPS")
    vals = [f"({sql_escape(clean(r.get(col)))})" for r in rows if clean(r.get(col))]
    if not vals:
        return
    f.write("-- EPS\n")
    f.write("INSERT IGNORE INTO eps (nombre) VALUES\n  ")
    f.write(",\n  ".join(vals))
    f.write(";\n\n")


def write_fondo_pensiones(f):
    _, rows = read_csv("fondo_pensiones")
    if not rows:
        return
    col = next((k for k in rows[0] if "fondo" in k.lower() or "pension" in k.lower()), "Fondo_Pensiones")
    vals = [f"({sql_escape(clean(r.get(col)))})" for r in rows if clean(r.get(col))]
    if not vals:
        return
    f.write("-- Fondo pensiones\n")
    f.write("INSERT IGNORE INTO fondo_pensiones (nombre) VALUES\n  ")
    f.write(",\n  ".join(vals))
    f.write(";\n\n")


def write_motivo_retiro(f):
    _, rows = read_csv("motivo_retiro")
    if not rows:
        return
    col = next((k for k in rows[0] if "tipo" in k.lower() and "retiro" in k.lower()), "Tipo_Retiro")
    vals = [f"({sql_escape(clean(r.get(col)))})" for r in rows if clean(r.get(col))]
    if not vals:
        return
    f.write("-- Motivo retiro\n")
    f.write("INSERT IGNORE INTO motivo_retiro (tipo_retiro) VALUES\n  ")
    f.write(",\n  ".join(vals))
    f.write(";\n\n")


def write_departamento(f):
    _, rows = read_csv("departamento")
    if not rows:
        return
    depto_col = next((k for k in rows[0] if "departamento" in k.lower() or "dep" in k.lower()), "Departamento")
    pres_col = next((k for k in rows[0] if "presupuest" in k.lower()), "Presupuestados")
    vals = []
    for r in rows:
        nombre = clean(r.get(depto_col))
        if not nombre:
            continue
        pres = clean(r.get(pres_col))
        pres_sql = sql_int(pres) if pres else "NULL"
        vals.append(f"({sql_escape(nombre)}, {pres_sql})")
    if not vals:
        return
    f.write("-- Departamento\n")
    f.write("INSERT IGNORE INTO departamento (nombre, presupuestados) VALUES\n  ")
    f.write(",\n  ".join(vals))
    f.write(";\n\n")


def write_area(f):
    _, rows = read_csv("area")
    if not rows:
        return
    depto_col = next((k for k in rows[0] if "departamento" in k.lower()), "Departamento")
    area_col = next((k for k in rows[0] if k.lower() == "area" or "area" in k.lower()), "Area")
    pres_col = next((k for k in rows[0] if "presupuest" in k.lower()), "Presupuestados")
    f.write("-- Área (usa departamento por nombre)\n")
    for r in rows:
        depto = clean(r.get(depto_col))
        area = clean(r.get(area_col))
        if not depto or not area:
            continue
        pres = clean(r.get(pres_col))
        pres_sql = sql_int(pres) if pres else "NULL"
        f.write(
            "INSERT IGNORE INTO area (departamento_id, nombre, presupuestados) "
            "SELECT id, {}, {} FROM departamento WHERE nombre = {} LIMIT 1;\n".format(
                sql_escape(area), pres_sql, sql_escape(depto)
            )
        )
    f.write("\n")


def write_perfil_ocupacional(f):
    _, rows = read_csv("perfil_ocupacional")
    if not rows:
        return
    id_col = next((k for k in rows[0] if "id_perfil" in k.lower() or "id" in k.lower()), "ID_Perfil_Ocupacional")
    area_col = next((k for k in rows[0] if k.lower() == "area"), "Area")
    perfil_col = next((k for k in rows[0] if "perfil" in k.lower()), "Perfil_Ocupacional")
    pres_col = next((k for k in rows[0] if "presupuest" in k.lower()), "Presupuestados")
    f.write("-- Perfil ocupacional (usa área por nombre)\n")
    for r in rows:
        pid = clean(r.get(id_col))
        area_nom = clean(r.get(area_col))
        perfil = clean(r.get(perfil_col)) or pid
        if not pid:
            continue
        pres = clean(r.get(pres_col))
        pres_sql = sql_int(pres) if pres else "NULL"
        if area_nom:
            f.write(
                "INSERT IGNORE INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados) "
                "SELECT {}, a.id, {}, {} FROM area a WHERE a.nombre = {} LIMIT 1;\n".format(
                    sql_escape(pid), sql_escape(perfil), pres_sql, sql_escape(area_nom)
                )
            )
        else:
            f.write(
                "INSERT IGNORE INTO perfil_ocupacional (id_perfil, area_id, perfil_ocupacional, presupuestados) "
                "VALUES ({}, 1, {}, {});\n".format(sql_escape(pid), sql_escape(perfil), pres_sql)
            )
    f.write("\n")


def write_menu(f):
    _, rows = read_csv("menu")
    if not rows:
        return
    id_col = next((k for k in rows[0] if "id" in k.lower()), "id_menu")
    nom_col = next((k for k in rows[0] if "nombre" in k.lower()), "nombre")
    vista_col = next((k for k in rows[0] if "vista" in k.lower()), "vista")
    img_col = next((k for k in rows[0] if "imagen" in k.lower()), "imagen")
    vals = []
    for r in rows:
        id_val = clean(r.get(id_col))
        if not id_val:
            continue
        nom = clean(r.get(nom_col)) or ""
        vista = clean(r.get(vista_col))
        img = clean(r.get(img_col))
        vals.append(f"({sql_escape(id_val)}, {sql_escape(nom)}, {sql_escape(vista)}, {sql_escape(img)})")
    if not vals:
        return
    f.write("-- Menú\n")
    f.write("INSERT IGNORE INTO menu (id_menu, nombre, vista, imagen) VALUES\n  ")
    f.write(",\n  ".join(vals))
    f.write(";\n\n")


def write_usuario(f):
    _, rows = read_csv("usuario")
    if not rows:
        return
    id_col = next((k for k in rows[0] if "id" in k.lower() and "user" in k.lower()), "id_user")
    email_col = next((k for k in rows[0] if "email" in k.lower()), "email")
    nom_col = next((k for k in rows[0] if "nombre" in k.lower()), "nombre")
    rol_col = next((k for k in rows[0] if "rol" in k.lower()), "rol")
    estado_col = next((k for k in rows[0] if "estado" in k.lower()), "estado")
    acc_col = next((k for k in rows[0] if "accion" in k.lower()), "acciones")
    vals = []
    for r in rows:
        id_val = clean(r.get(id_col))
        email = clean(r.get(email_col))
        nombre = clean(r.get(nom_col))
        rol = clean(r.get(rol_col))
        if not id_val or not email or not nombre or not rol:
            continue
        estado = clean(r.get(estado_col))
        estado_sql = "TRUE" if (estado is None or str(estado).upper() in ("1", "TRUE", "SI", "SÍ", "ACTIVO")) else "FALSE"
        acc = clean(r.get(acc_col))
        vals.append(
            f"({sql_escape(id_val)}, {sql_escape(email)}, {sql_escape(nombre)}, {sql_escape(rol)}, {estado_sql}, {sql_escape(acc)})"
        )
    if not vals:
        return
    f.write("-- Usuario (sin password_hash; configurar después)\n")
    f.write("INSERT IGNORE INTO usuario (id_user, email, nombre, rol, estado, acciones) VALUES\n  ")
    f.write(",\n  ".join(vals))
    f.write(";\n\n")


def write_empleado(f):
    _, rows = read_csv("dbase")
    if not rows:
        return
    cols_emp = [
        "ID_Cedula", "Apellidos_Nombre", "Lugar_Expedicion", "Fecha_Expedicion",
        "Departamento", "Area", "ID_Perfil_Ocupacional", "Fecha_Ingreso",
        "Sexo", "Rh", "Direccion_Residencia", "Barrio_Residencia",
        "Ciudad_Residencia", "Telefono", "Celular", "Direccion_Email",
        "EPS", "Fondo_Pensiones", "Fecha_Nacimiento", "Hijos", "Estado",
        "Tipo_Documento", "Nivel_Educativo", "Profesion",
        "contactoEmergencia", "TelefonoContacto", "parentezco",
    ]
    BATCH = 80
    f.write("-- Empleado (DBase)\n")
    for i in range(0, len(rows), BATCH):
        batch = rows[i : i + BATCH]
        vals = []
        for r in batch:
            ced = clean(r.get("ID_Cedula"))
            if not ced:
                continue
            try:
                ced = str(int(float(ced)))
            except (ValueError, TypeError):
                pass
            t = (
                sql_escape(ced),
                sql_escape(clean(r.get("Apellidos_Nombre"))),
                sql_escape(clean(r.get("Lugar_Expedicion"))),
                sql_escape(clean(r.get("Fecha_Expedicion"))),
                sql_escape(clean(r.get("Departamento"))),
                sql_escape(clean(r.get("Area"))),
                sql_escape(clean(r.get("ID_Perfil_Ocupacional"))),
                sql_escape(clean(r.get("Fecha_Ingreso"))),
                sql_escape(clean(r.get("Sexo"))),
                sql_escape(clean(r.get("Rh"))),
                sql_escape(clean(r.get("Direccion_Residencia"))),
                sql_escape(clean(r.get("Barrio_Residencia"))),
                sql_escape(clean(r.get("Ciudad_Residencia"))),
                sql_escape(clean(r.get("Telefono"))),
                sql_escape(clean(r.get("Celular"))),
                sql_escape(clean(r.get("Direccion_Email"))),
                sql_escape(clean(r.get("EPS"))),
                sql_escape(clean(r.get("Fondo_Pensiones"))),
                sql_escape(clean(r.get("Fecha_Nacimiento"))),
                sql_escape(clean(r.get("Hijos"))),
                sql_escape(clean(r.get("Estado")) or "ACTIVO"),
                sql_escape(clean(r.get("Tipo_Documento"))),
                sql_escape(clean(r.get("Nivel_Educativo"))),
                sql_escape(clean(r.get("Profesion"))),
                sql_escape(clean(r.get("contactoEmergencia"))),
                sql_escape(clean(r.get("TelefonoContacto"))),
                sql_escape(clean(r.get("parentezco"))),
            )
            vals.append("(" + ", ".join(t) + ")")
        if vals:
            f.write(
                "INSERT IGNORE INTO empleado (id_cedula, apellidos_nombre, lugar_expedicion, fecha_expedicion, "
                "departamento, area, id_perfil_ocupacional, fecha_ingreso, sexo, rh, direccion_residencia, "
                "barrio_residencia, ciudad_residencia, telefono, celular, direccion_email, eps, fondo_pensiones, "
                "fecha_nacimiento, hijos, estado, tipo_documento, nivel_educativo, profesion, "
                "contacto_emergencia, telefono_contacto, parentezco) VALUES\n  "
            )
            f.write(",\n  ".join(vals))
            f.write(";\n")
    f.write("\n")


def write_hijo(f):
    _, rows = read_csv("hijos")
    if not rows:
        return
    cols = ["ID_Hijo", "Identificacion_Hijo", "ID_Cedula", "Apellidos_Nombre", "Fecha_Nacimiento", "Sexo", "Estado"]
    BATCH = 100
    f.write("-- Hijo\n")
    for i in range(0, len(rows), BATCH):
        batch = rows[i : i + BATCH]
        vals = []
        for r in batch:
            id_h = clean(r.get("ID_Hijo"))
            if not id_h:
                continue
            vals.append(
                "(" + ", ".join([
                    sql_escape(id_h),
                    sql_escape(clean(r.get("Identificacion_Hijo"))),
                    sql_escape(clean(r.get("ID_Cedula"))),
                    sql_escape(clean(r.get("Apellidos_Nombre"))),
                    sql_escape(clean(r.get("Fecha_Nacimiento"))),
                    sql_escape(clean(r.get("Sexo"))),
                    sql_escape(clean(r.get("Estado"))),
                ]) + ")"
            )
        if vals:
            f.write(
                "INSERT IGNORE INTO hijo (id_hijo, identificacion_hijo, id_cedula, apellidos_nombre, "
                "fecha_nacimiento, sexo, estado) VALUES\n  "
            )
            f.write(",\n  ".join(vals))
            f.write(";\n")
    f.write("\n")


def write_retirado(f):
    _, rows = read_csv("retirados")
    if not rows:
        return
    BATCH = 100
    f.write("-- Retirado\n")
    for i in range(0, len(rows), BATCH):
        batch = rows[i : i + BATCH]
        vals = []
        for r in batch:
            id_r = clean(r.get("ID_Retiro"))
            if not id_r:
                continue
            dias = clean(r.get("Dias_Laborados"))
            dias_sql = sql_int(dias)
            vals.append(
                "(" + ", ".join([
                    sql_escape(id_r),
                    sql_escape(clean(r.get("ID_Cedula"))),
                    sql_escape(clean(r.get("Apellidos_Nombre"))),
                    sql_escape(clean(r.get("Departamento"))),
                    sql_escape(clean(r.get("Area"))),
                    sql_escape(clean(r.get("ID_Perfil_Ocupacional"))),
                    sql_escape(clean(r.get("Fecha_Ingreso"))),
                    sql_escape(clean(r.get("Fecha_Retiro"))),
                    dias_sql,
                    sql_escape(clean(r.get("Tipo_Retiro"))),
                    sql_escape(clean(r.get("Motivo"))),
                ]) + ")"
            )
        if vals:
            f.write(
                "INSERT IGNORE INTO retirado (id_retiro, id_cedula, apellidos_nombre, departamento, area, "
                "id_perfil_ocupacional, fecha_ingreso, fecha_retiro, dias_laborados, tipo_retiro, motivo) VALUES\n  "
            )
            f.write(",\n  ".join(vals))
            f.write(";\n")
    f.write("\n")


def main():
    if not os.path.isdir(CSV_DIR):
        print(f"Carpeta de CSV no encontrada: {CSV_DIR}", file=sys.stderr)
        print("Puedes definir CSV_DIR para otra ruta.", file=sys.stderr)
        sys.exit(1)

    with open(OUTPUT_SQL, "w", encoding="utf-8") as f:
        write_header(f)
        write_rol(f)
        write_tipo_documento(f)
        write_nivel_educativo(f)
        write_profesion(f)
        write_eps(f)
        write_fondo_pensiones(f)
        write_motivo_retiro(f)
        write_departamento(f)
        write_area(f)
        write_perfil_ocupacional(f)
        write_menu(f)
        write_usuario(f)
        write_empleado(f)
        write_hijo(f)
        write_retirado(f)

    print(f"Generado: {OUTPUT_SQL}")
    print("Abre ese archivo en MySQL Workbench y ejecútalo (Ctrl+A, ejecutar) para cargar los datos.")


if __name__ == "__main__":
    main()
