"""Verifica que consultar Áreas no sobrescriba jefes asignados manualmente."""

import inspect

from app import areas, directorio_jefes_aplicar


def run():
    vista_areas = inspect.getsource(inspect.unwrap(areas))
    aplicar_directorio = inspect.getsource(inspect.unwrap(directorio_jefes_aplicar))

    assert "_sync_directorio_jefes()" not in vista_areas
    assert "_sync_directorio_jefes()" in aplicar_directorio
    print("OK: /areas no sincroniza jefes; solo el POST explícito puede hacerlo")


if __name__ == "__main__":
    run()
