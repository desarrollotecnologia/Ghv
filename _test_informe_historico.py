"""Prueba local del informe histórico permisos/vacaciones."""
from datetime import date

from dotenv import load_dotenv

load_dotenv(".env")
load_dotenv(".env.local", override=True)

from app import (
    app,
    _can_ver_informe_historico_permiso_vacaciones,
    _fetch_historico_permisos,
    _fetch_historico_vacaciones,
    export_excel_workbook_response,
    HISTORICO_PERMISOS_EXPORT_COLUMNS,
    HISTORICO_VACACIONES_EXPORT_COLUMNS,
    query,
)


def main():
    hoy = date.today()
    desde = date(hoy.year, 1, 1)

    with app.app_context():
        print("=== Usuarios con acceso al informe ===")
        users = query(
            "SELECT id_user, email, nombre, rol FROM usuario "
            "WHERE LOWER(email) IN ('gestionhumana@colbeef.com', 'tecnologia@colbeef.com') "
            "OR rol = 'ADMIN' LIMIT 10"
        )
        for u in users or []:
            ok = _can_ver_informe_historico_permiso_vacaciones(u)
            print(f"  {'OK' if ok else 'NO'}  {u.get('email')} ({u.get('rol')})")

        permisos = _fetch_historico_permisos(desde, hoy)
        vacaciones = _fetch_historico_vacaciones(desde, hoy)
        print(f"\n=== Datos {desde} -> {hoy} ===")
        print(f"  Permisos: {len(permisos)}")
        print(f"  Vacaciones: {len(vacaciones)}")

        if permisos:
            e = permisos[0]
            print("\n  Ejemplo permiso:")
            for k in (
                "cedula_solicitante",
                "nombre_solicitante",
                "estado",
                "nombre_autorizador",
                "cedula_autorizador",
            ):
                print(f"    {k}: {e.get(k)}")

        if vacaciones:
            e = vacaciones[0]
            print("\n  Ejemplo vacacion:")
            for k in (
                "cedula_solicitante",
                "nombre_solicitante",
                "estado",
                "nombre_autorizador",
                "cedula_autorizador",
            ):
                print(f"    {k}: {e.get(k)}")

        out = "_test_informe_historico.xlsx"
        with app.test_request_context():
            resp = export_excel_workbook_response(
                [
                    ("Permisos", permisos, HISTORICO_PERMISOS_EXPORT_COLUMNS),
                    ("Vacaciones", vacaciones, HISTORICO_VACACIONES_EXPORT_COLUMNS),
                ],
                "Historico_prueba_local",
            )
        with open(out, "wb") as f:
            f.write(resp.get_data())
        print(f"\n=== Excel generado: {out} ({len(resp.get_data())} bytes) ===")

        client = app.test_client()
        with client.session_transaction() as sess:
            admin = query(
                "SELECT id_user FROM usuario WHERE LOWER(email) = 'gestionhumana@colbeef.com' LIMIT 1",
                one=True,
            )
            if not admin:
                admin = query(
                    "SELECT id_user FROM usuario WHERE rol = 'ADMIN' LIMIT 1",
                    one=True,
                )
            if not admin:
                print("\n[WARN] No hay usuario gestionhumana ni ADMIN para probar HTTP.")
                return
            sess["user_id"] = admin["id_user"]

        r = client.get("/informes/permisos-vacaciones")
        print(f"\n=== HTTP GET informe === status={r.status_code}")
        if r.status_code != 200:
            print(r.data[:500])
            return

        r2 = client.get(
            "/informes/permisos-vacaciones/export",
            query_string={
                "fecha_desde": desde.isoformat(),
                "fecha_hasta": hoy.isoformat(),
                "incluir_permisos": "1",
                "incluir_vacaciones": "1",
            },
        )
        print(f"=== HTTP GET export === status={r2.status_code} content-type={r2.content_type}")
        if r2.status_code == 200:
            with open("_test_informe_historico_http.xlsx", "wb") as f:
                f.write(r2.data)
            print("  Guardado: _test_informe_historico_http.xlsx")
        else:
            print(r2.data[:500])


if __name__ == "__main__":
    main()
