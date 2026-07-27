"""Comprueba que la reimportación destructiva no pueda ejecutarse por accidente."""

from database.update_from_xlsx import main


def run():
    try:
        main()
    except SystemExit as exc:
        assert "BLOQUEADO" in str(exc)
    else:
        raise AssertionError("update_from_xlsx debe exigir confirmación explícita")
    print("OK: la reimportación destructiva está bloqueada por defecto")


if __name__ == "__main__":
    run()
