"""
Directorio Colbeef: área → jefe inmediato (correo).

Fuente: database/Directorio_Colbeef.xlsx
Columnas: Departamento, Área, Jefe Inmediato, Correo

Uso CLI:
    python database/aplicar_directorio_colbeef.py
"""
from __future__ import annotations

import os
import re
import unicodedata
from typing import Any

ROOT = os.path.dirname(os.path.abspath(__file__))
DEFAULT_XLSX = os.path.join(ROOT, "database", "Directorio_Colbeef.xlsx")

PASSWORD_HASH_COLBEEF2026 = (
    "scrypt:32768:8:1$yvOKdBrftwQH01iO$"
    "939e350382057a8ecfbe9e265c63a382f2374b82fb487e5db21431addc5e6ee34f65c10c3bbf2c326e60a63f37190467fc47109387f67aa5d798816e5d018d89"
)

# Correos del Excel que deben resolver a cuenta existente en BD.
EMAIL_CANONICAL = {
    "gerencia.calidad@colbeef.com": "gerencia.calidad@colbeef.com",
    "coordinacion.ambiental@colbeef.com": "coordinacion.ambiental@colbeef.com",
    "coordinacion.logistica@colbeef.com": "coordinacion.logistico@colbeef.com",
    "coordinacion.logistico@colbeef.com": "coordinacion.logistico@colbeef.com",
    "coordinacion.contabilidad@colbeef.com": "contador@colbeef.com",
    "jefe.compras@colbeef.com": "coordinacion.compras@colbeef.com",
}

# Cédulas confirmadas Colbeef → cuenta jefe (usuario.id_cedula + EMP-{cedula})
JEFE_CEDULA_VINCULOS: dict[str, str] = {
    "coordinacion.ambiental@colbeef.com": "1102384611",   # REY RODRIGUEZ KEVIN ANDRES
    "coordinacion.lyd@colbeef.com": "1095835855",         # ISIDRO ARCILA PAULA ANDREA
    "director.surtidores@colbeef.com": "1977852",         # RINCON SARMIENTO CARLOS ANDRES
    "gerencia.operaciones@colbeef.com": "1098725715",     # QUESADA ZORRILLA WILHELM ARLEY
    "jefe.mercadeo@colbeef.com": "52822147",              # MUÑOZ BERNAL PAOLA ANDREA
}

# Override fijo de jefe inmediato por cédula del empleado (cédula → correo del superior).
# Se aplica DESPUÉS de la asignación por área para que siempre gane.
# Caso: los jefes/coordinadores del Dpto Admon y Financiero cuelgan del Director
# Admin. Financiero (Diego), no de su propia área (que los apuntaría a sí mismos).
ENCARGADO_OVERRIDE: dict[str, str] = {
    "1098698851": "gerencia.financiera@colbeef.com",  # Jefe Compras (REYES NOREÑA BAIRON)
    "43536705": "gerencia.financiera@colbeef.com",    # Jefe Contabilidad (OSORIO ESTRADA LILIANA)
    "1098673651": "gerencia.financiera@colbeef.com",  # Jefe Tesoreria (PINEDA TRIANA VIVIANA)
    "73579178": "gerencia.financiera@colbeef.com",    # Jefe TICs (LARA LUNA LEONARDO)
    "1098661407": "gerencia.financiera@colbeef.com",  # Jefe Gestion Humana (VERA MORA CINDY)
}

# Override fijo de jefe inmediato por departamento.
DEPARTAMENTO_ENCARGADO_OVERRIDE: dict[str, str] = {
    "CONTROLLER": "gerencia.operaciones@colbeef.com",
}

# Nombres de área en empleado.area equivalentes al catálogo / Excel.
AREA_ALIASES: dict[str, list[str]] = {
    "NEGOCIOS GANADEROS": ["NEGOCIOS GANADEROS", "FOMENTO GANADERO", "NEG. GANADEROS"],
    "DIRECCION ASUNTOS CORPORATIVOS": [
        "DIRECCION ASUNTOS CORPORATIVOS",
        "ASUNTOS CORPORATIVOS",
        "JURIDICA",
        "JURIDICO",
    ],
    "ACCIONISTAS": ["ACCIONISTAS"],
    "CONTROL INTERNO": ["CONTROL INTERNO", "DIRECCION CONTROLLER"],
    "L&D DESPOSTE": ["L&D DESPOSTE", "LYD DESPOSTE", "L Y D DESPOSTE"],
    "LIMPIEZA Y DESINFECCION": ["LIMPIEZA Y DESINFECCION", "LYD", "L Y D", "L&D"],
    "TECNOLOGIA": ["TECNOLOGIA", "TICS", "TIC", "TIC'S", "DATA"],
    "TESORERIA": ["TESORERIA", "CARTERA", "PLANILLAJE Y FACTURACION"],
    "DIRECCION DPTO COMERCIAL": ["DIRECCION DPTO COMERCIAL", "SURTIDORES", "DIRECCION SURTIDORES"],
    "GESTION HUMANA": ["GESTION HUMANA"],
}

# Respaldo si falta el Excel (Directorio Colbeef oficial).
DIRECTORIO_FALLBACK: list[dict[str, str]] = [
    {"departamento": "DESPOSTE", "area": "CALIDAD DESPOSTE", "jefe": "Jefe Calidad", "email": "coordinacion.calidad@colbeef.com"},
    {"departamento": "DESPOSTE", "area": "L&D DESPOSTE", "jefe": "Supervisor LyD", "email": "coordinacion.lyd@colbeef.com"},
    {"departamento": "DESPOSTE", "area": "LAVANDERIA DESPOSTE", "jefe": "Supervisor LyD", "email": "coordinacion.lyd@colbeef.com"},
    {"departamento": "DESPOSTE", "area": "LINEA DESPOSTE", "jefe": "Lider Desposte", "email": "desposte@colbeef.com"},
    {"departamento": "DESPOSTE", "area": "PORCIONADO", "jefe": "Lider Desposte", "email": "desposte@colbeef.com"},
    {"departamento": "DESPOSTE", "area": "PRODUCCION DESPOSTE", "jefe": "Lider Desposte", "email": "desposte@colbeef.com"},
    {"departamento": "DESPOSTE", "area": "MTTO DESPOSTE", "jefe": "Directora Planta", "email": "gerencia.calidad@colbeef.com"},
    {"departamento": "DESPOSTE", "area": "LOGISTICA DESPOSTE", "jefe": "Lider Logistica", "email": "coordinacion.logistico@colbeef.com"},
    {"departamento": "DPTO ADMON Y FINANCIERO", "area": "COMPRAS", "jefe": "Jefe Compras", "email": "coordinacion.compras@colbeef.com"},
    {"departamento": "DPTO ADMON Y FINANCIERO", "area": "CONTABILIDAD", "jefe": "Jefe Contabilidad", "email": "contador@colbeef.com"},
    {"departamento": "DPTO ADMON Y FINANCIERO", "area": "TESORERIA", "jefe": "Jefe Tesoreria y Cartera", "email": "coordinacion.tesoreria@colbeef.com"},
    {"departamento": "DPTO ADMON Y FINANCIERO", "area": "ADMINISTRACION", "jefe": "Director Admin. Financiero", "email": "gerencia.financiera@colbeef.com"},
    {"departamento": "DPTO ADMON Y FINANCIERO", "area": "DIRECCION ADMON Y FINANCIERA", "jefe": "Director Admin. Financiero", "email": "gerencia.financiera@colbeef.com"},
    {"departamento": "CONTROLLER", "area": "CONTROL INTERNO", "jefe": "Director Controller", "email": "gerencia.operaciones@colbeef.com"},
    {"departamento": "DPTO CALIDAD", "area": "DIRECCION DPTO CALIDAD", "jefe": "Jefe Calidad", "email": "coordinacion.calidad@colbeef.com"},
    {"departamento": "DPTO CALIDAD", "area": "INVIMA", "jefe": "Jefe Calidad", "email": "coordinacion.calidad@colbeef.com"},
    {"departamento": "DPTO CALIDAD", "area": "AMBIENTAL", "jefe": "Lider Ambiental", "email": "coordinacion.ambiental@colbeef.com"},
    {"departamento": "DPTO CALIDAD", "area": "PTAR", "jefe": "Lider Ambiental", "email": "coordinacion.ambiental@colbeef.com"},
    {"departamento": "DPTO CALIDAD", "area": "PTAP", "jefe": "Lider Ambiental", "email": "coordinacion.ambiental@colbeef.com"},
    {"departamento": "DPTO CALIDAD", "area": "LIMPIEZA Y DESINFECCION", "jefe": "Supervisor LyD", "email": "coordinacion.lyd@colbeef.com"},
    {"departamento": "DPTO CALIDAD", "area": "SST", "jefe": "Lider SST", "email": "siso@colbeef.com"},
    {"departamento": "DPTO CALIDAD", "area": "LAVANDERIA", "jefe": "Supervisor LyD", "email": "coordinacion.lyd@colbeef.com"},
    {"departamento": "DPTO ADMON Y FINANCIERO", "area": "JARDINERIA", "jefe": "Jefe Compras", "email": "jefe.compras@colbeef.com"},
    {"departamento": "DPTO COMERCIAL", "area": "DIRECCION DPTO COMERCIAL", "jefe": "Direccion Comercial", "email": "gerencia.comercial@colbeef.com"},
    {"departamento": "DPTO COMERCIAL", "area": "MERCADEO", "jefe": "Jefe de Mercadeo", "email": "jefe.mercadeo@colbeef.com"},
    {"departamento": "NEGOCIOS GANADEROS", "area": "FOMENTO GANADERO", "jefe": "Director Negocios Ganaderos", "email": "director.surtidores@colbeef.com"},
    {"departamento": "NEGOCIOS GANADEROS", "area": "NEGOCIOS GANADEROS", "jefe": "Director Negocios Ganaderos", "email": "director.surtidores@colbeef.com"},
    {"departamento": "DPTO DE OPERACIONES", "area": "DIRECCION PRODUCCION", "jefe": "Directora Planta", "email": "gerencia.calidad@colbeef.com"},
    {"departamento": "DPTO DE OPERACIONES", "area": "LINEA DE SACRIFICIO", "jefe": "Lider Beneficio", "email": "coordinacion.subproductos@colbeef.com"},
    {"departamento": "DPTO DE OPERACIONES", "area": "SUBPRODUCTOS COMESTIBLES", "jefe": "Lider Beneficio", "email": "coordinacion.subproductos@colbeef.com"},
    {"departamento": "DPTO DE OPERACIONES", "area": "RECEPCION Y PESAJE", "jefe": "Lider Corrales", "email": "coordinacion.corrales@colbeef.com"},
    {"departamento": "DPTO DE OPERACIONES", "area": "LOGISTICA", "jefe": "Lider Logistica", "email": "coordinacion.logistica@colbeef.com"},
    {"departamento": "DPTO DE OPERACIONES", "area": "MANTENIMIENTO", "jefe": "Directora Planta", "email": "gerencia.calidad@colbeef.com"},
    {"departamento": "ASUNTOS CORPORATIVOS", "area": "DIRECCION ASUNTOS CORPORATIVOS", "jefe": "Directora Asuntos corporativos", "email": "gerencia.juridica@colbeef.com"},
    {"departamento": "DPTO ADMON Y FINANCIERO", "area": "GESTION HUMANA", "jefe": "Director Admin. Financiero", "email": "gerencia.financiera@colbeef.com"},
    {"departamento": "ASUNTOS CORPORATIVOS", "area": "ACCIONISTAS", "jefe": "Directora Asuntos corporativos", "email": "gerencia.juridica@colbeef.com"},
    {"departamento": "DPTO ADMON Y FINANCIERO", "area": "TECNOLOGIA", "jefe": "Jefe TICs", "email": "coordinacion.tecnologia@colbeef.com"},
]


def _normalize_key(text: str) -> str:
    s = unicodedata.normalize("NFKD", str(text or ""))
    s = "".join(c for c in s if not unicodedata.combining(c))
    s = s.upper().strip()
    s = s.replace("&", " ")
    s = re.sub(r"[^A-Z0-9 ]+", " ", s)
    return re.sub(r"\s+", " ", s).strip()


def normalize_email(raw: str, jefe_nombre: str = "") -> str:
    email = str(raw or "").strip().lower()
    if not email:
        slug = re.sub(r"[^a-z0-9]+", ".", _normalize_key(jefe_nombre).lower()).strip(".")
        return f"{slug or 'jefe.directorio'}@colbeef.local"
    return EMAIL_CANONICAL.get(email, email)


def area_variants(area: str) -> list[str]:
    key = _normalize_key(area)
    variants = {_normalize_key(area)}
    for catalog, aliases in AREA_ALIASES.items():
        all_names = [_normalize_key(catalog)] + [_normalize_key(a) for a in aliases]
        if key in all_names:
            variants.update(all_names)
            break
    return sorted(variants)


def load_directorio(xlsx_path: str | None = None) -> list[dict[str, str]]:
    path = xlsx_path or DEFAULT_XLSX
    if os.path.isfile(path):
        try:
            import openpyxl

            wb = openpyxl.load_workbook(path, read_only=True, data_only=True)
            ws = wb.active
            rows: list[dict[str, str]] = []
            for i, row in enumerate(ws.iter_rows(values_only=True)):
                if i == 0:
                    continue
                if not row or not any(row):
                    continue
                depto = str(row[0] or "").strip().upper()
                area = str(row[1] or "").strip().upper()
                jefe = str(row[2] or "").strip()
                email_raw = str(row[3] or "").strip() if len(row) > 3 else ""
                if not area:
                    continue
                rows.append(
                    {
                        "departamento": depto,
                        "area": area,
                        "jefe": jefe,
                        "email": normalize_email(email_raw, jefe),
                        "email_excel": email_raw,
                    }
                )
            wb.close()
            if rows:
                return rows
        except Exception:
            pass
    return [dict(r, email=normalize_email(r["email"], r["jefe"]), email_excel=r["email"]) for r in DIRECTORIO_FALLBACK]


def _next_user_id(fetch_one) -> str:
    row = fetch_one(
        "SELECT id_user FROM usuario WHERE id_user REGEXP '^US-[0-9]+$' "
        "ORDER BY CAST(SUBSTRING(id_user, 4) AS UNSIGNED) DESC LIMIT 1"
    )
    n = 0
    if row and row.get("id_user"):
        try:
            n = int(str(row["id_user"]).split("-", 1)[1])
        except ValueError:
            n = 0
    return f"US-{n + 1:04d}"


def _vincular_cedula_jefe(fetch_one, execute_fn, uid: str, cedula: str) -> bool:
    """Vincula usuario jefe con ficha empleado y crea cuenta EMP-{cedula}."""
    if not uid or not cedula:
        return False
    emp = fetch_one(
        "SELECT id_cedula, apellidos_nombre FROM empleado WHERE id_cedula = %s LIMIT 1",
        (cedula,),
    )
    if not emp:
        return False
    execute_fn("UPDATE usuario SET id_cedula = %s WHERE id_user = %s", (cedula, uid))
    emp_id = f"EMP-{cedula}"
    execute_fn(
        "INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, "
        "id_cedula, debe_cambiar_clave) VALUES (%s, %s, %s, %s, 'EMPLEADO', 1, 'VISTA', %s, 1) "
        "ON DUPLICATE KEY UPDATE nombre = VALUES(nombre), id_cedula = VALUES(id_cedula), "
        "rol = 'EMPLEADO', estado = 1, acciones = 'VISTA'",
        (
            emp_id,
            f"{cedula}@empleado.colbeef.local",
            PASSWORD_HASH_COLBEEF2026,
            emp["apellidos_nombre"],
            cedula,
        ),
    )
    return True


def _resolve_cedula_jefe(fetch_one, email: str) -> str | None:
    email = (email or "").strip().lower()
    cedula = JEFE_CEDULA_VINCULOS.get(email)
    if cedula:
        return cedula
    emp = fetch_one(
        "SELECT id_cedula FROM empleado WHERE LOWER(TRIM(COALESCE(direccion_email, ''))) = %s LIMIT 1",
        (email,),
    )
    if emp and emp.get("id_cedula"):
        return str(emp["id_cedula"]).strip()
    return None


def _ensure_jefe_rol(execute_fn):
    execute_fn("INSERT IGNORE INTO rol (nombre) VALUES ('JEFE INMEDIATO')")
    execute_fn("INSERT IGNORE INTO rol_permiso (rol_nombre, nivel) VALUES ('JEFE INMEDIATO', 'WRITE')")
    for mod, vis in (
        ("permisos", 1),
        ("organizacion", 0),
        ("personal", 0),
        ("retiro", 0),
        ("familia", 0),
        ("eventos", 0),
        ("eps", 0),
        ("fondos", 0),
        ("reportes", 0),
        ("admin", 0),
    ):
        execute_fn(
            "INSERT INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES (%s, %s, %s) "
            "ON DUPLICATE KEY UPDATE visible = VALUES(visible)",
            ( "JEFE INMEDIATO", mod, vis),
        )


def apply_directorio(
    fetch_all,
    fetch_one,
    execute_fn,
    xlsx_path: str | None = None,
    dry_run: bool = False,
) -> dict[str, Any]:
    """
    Crea usuarios JEFE INMEDIATO faltantes y asigna id_user_encargado por área.
    Retorna resumen de la operación.
    """
    rows = load_directorio(xlsx_path)
    if not dry_run:
        _ensure_jefe_rol(execute_fn)

    users_created: list[str] = []
    users_updated: list[str] = []
    areas_assigned: list[dict[str, Any]] = []
    errors: list[str] = []

    email_to_id: dict[str, str] = {}
    all_users = fetch_all("SELECT id_user, email, nombre, rol FROM usuario") or []
    for u in all_users:
        em = str(u.get("email") or "").strip().lower()
        if em:
            email_to_id[em] = u["id_user"]

    active_emps = fetch_all("SELECT id_cedula, departamento, area FROM empleado WHERE estado = 'ACTIVO'") or []
    emps_by_area_key: dict[str, list[str]] = {}
    for emp in active_emps:
        key = _normalize_key(emp.get("area"))
        if not key:
            continue
        emps_by_area_key.setdefault(key, []).append(emp["id_cedula"])

    jefe_meta: dict[str, str] = {}
    for row in rows:
        email = row["email"]
        jefe_meta[email] = row["jefe"].strip().upper()

    for email, nombre in jefe_meta.items():
        if email in email_to_id:
            uid = email_to_id[email]
            if not dry_run:
                execute_fn(
                    "UPDATE usuario SET nombre = %s, rol = 'JEFE INMEDIATO', estado = 1, acciones = 'APROBAR' "
                    "WHERE id_user = %s AND UPPER(COALESCE(rol, '')) NOT IN ('ADMIN', 'COORD. GH')",
                    (nombre, uid),
                )
                execute_fn(
                    "INSERT INTO rol_modulo (rol_nombre, modulo_key, visible) VALUES ('JEFE INMEDIATO', 'permisos', 1) "
                    "ON DUPLICATE KEY UPDATE visible = 1"
                )
                cedula = _resolve_cedula_jefe(fetch_one, email)
                if cedula:
                    _vincular_cedula_jefe(fetch_one, execute_fn, uid, cedula)
            users_updated.append(email)
            continue

        uid = _next_user_id(fetch_one)
        if dry_run:
            users_created.append(f"{email} (nuevo {uid})")
            email_to_id[email] = uid
            continue

        execute_fn(
            "INSERT INTO usuario (id_user, email, password_hash, nombre, rol, estado, acciones, debe_cambiar_clave) "
            "VALUES (%s, %s, %s, %s, 'JEFE INMEDIATO', 1, 'APROBAR', 1)",
            (uid, email, PASSWORD_HASH_COLBEEF2026, nombre),
        )
        email_to_id[email] = uid
        users_created.append(email)

        cedula = _resolve_cedula_jefe(fetch_one, email)
        if cedula:
            _vincular_cedula_jefe(fetch_one, execute_fn, uid, cedula)

    for row in rows:
        email = row["email"]
        uid = email_to_id.get(email)
        if not uid:
            errors.append(f"Sin usuario para {row['area']} ({email})")
            continue
        variants = set(area_variants(row["area"]))
        cedulas: list[str] = []
        for area_key, ids in emps_by_area_key.items():
            if area_key in variants:
                cedulas.extend(ids)
        cedulas = list(dict.fromkeys(cedulas))

        if dry_run:
            areas_assigned.append(
                {
                    "area": row["area"],
                    "departamento": row["departamento"],
                    "jefe": row["jefe"],
                    "email": email,
                    "empleados": len(cedulas),
                }
            )
            continue

        updated = 0
        if cedulas:
            placeholders = ", ".join(["%s"] * len(cedulas))
            updated = execute_fn(
                f"UPDATE empleado SET id_user_encargado = %s WHERE id_cedula IN ({placeholders})",
                (uid, *cedulas),
            )
        areas_assigned.append(
            {
                "area": row["area"],
                "departamento": row["departamento"],
                "jefe": row["jefe"],
                "email": email,
                "empleados": updated if isinstance(updated, int) else len(cedulas),
            }
        )

    department_overrides_applied: list[dict[str, Any]] = []
    for departamento, jefe_email in DEPARTAMENTO_ENCARGADO_OVERRIDE.items():
        uid = email_to_id.get(str(jefe_email).strip().lower())
        if not uid:
            errors.append(f"Override sin usuario para {jefe_email} (departamento {departamento})")
            continue
        cedulas = [
            emp["id_cedula"]
            for emp in active_emps
            if _normalize_key(emp.get("departamento")) == _normalize_key(departamento)
        ]
        cedulas = list(dict.fromkeys(cedulas))
        department_overrides_applied.append(
            {"departamento": departamento, "email": jefe_email, "empleados": len(cedulas)}
        )
        if dry_run or not cedulas:
            continue
        placeholders = ", ".join(["%s"] * len(cedulas))
        execute_fn(
            f"UPDATE empleado SET id_user_encargado = %s WHERE id_cedula IN ({placeholders})",
            (uid, *cedulas),
        )

    overrides_applied: list[dict[str, Any]] = []
    for cedula, jefe_email in ENCARGADO_OVERRIDE.items():
        uid = email_to_id.get(str(jefe_email).strip().lower())
        if not uid:
            errors.append(f"Override sin usuario para {jefe_email} (cédula {cedula})")
            continue
        overrides_applied.append({"cedula": cedula, "email": jefe_email})
        if dry_run:
            continue
        execute_fn(
            "UPDATE empleado SET id_user_encargado = %s WHERE id_cedula = %s",
            (uid, cedula),
        )

    return {
        "total_filas": len(rows),
        "usuarios_creados": users_created,
        "usuarios_actualizados": users_updated,
        "areas": areas_assigned,
        "department_overrides": department_overrides_applied,
        "overrides": overrides_applied,
        "errors": errors,
        "directorio": rows,
    }


def directorio_for_display(xlsx_path: str | None = None) -> list[dict[str, str]]:
    """Filas del directorio enriquecidas con estado en BD (si hay conexión externa)."""
    return load_directorio(xlsx_path)
