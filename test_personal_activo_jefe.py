"""Prueba mínima del jefe inmediato en el listado de Personal Activo."""

from app import app, query


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
    print("OK: Personal Activo muestra la columna Jefe inmediato")


if __name__ == "__main__":
    run()
