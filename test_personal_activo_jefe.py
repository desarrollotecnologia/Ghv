"""Prueba del jefe inmediato en listado y exportación de Personal Activo."""

from app import _PERSONAL_EXPORT_COLS, _export_rows_personal_empleado, app, query


def run():
    admin = query(
        "SELECT id_user FROM usuario "
        "WHERE estado = 1 AND rol = 'ADMIN' AND COALESCE(debe_cambiar_clave, 0) = 0 "
        "ORDER BY id_user LIMIT 1",
        one=True,
    )
    assert admin, "Se necesita un ADMIN activo para probar la vista."

    with app.test_client() as client:
        with client.session_transaction() as session:
            session["user_id"] = admin["id_user"]
            session["force_change_password"] = False
        response = client.get("/personal-activo")

    assert response.status_code == 200
    assert "Jefe inmediato" in response.get_data(as_text=True)

    export_keys = [key for key, _label in _PERSONAL_EXPORT_COLS]
    assert "id_perfil_ocupacional" not in export_keys
    assert "perfil_ocupacional_nombre" in export_keys
    assert "jefe_inmediato" in export_keys
    assert "jefe_inmediato_email" in export_keys

    rows = _export_rows_personal_empleado("ACTIVO")
    assert rows
    assert all("jefe_inmediato" in row for row in rows)
    print("OK: listado y Excel muestran cargo y jefe inmediato legibles")


if __name__ == "__main__":
    run()
