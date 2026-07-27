"""Verifica que consultar Áreas no sobrescriba jefes asignados manualmente."""

import inspect

from app import areas, directorio_jefes_aplicar
from directorio_colbeef import apply_directorio


def run():
    vista_areas = inspect.getsource(inspect.unwrap(areas))
    aplicar_directorio = inspect.getsource(inspect.unwrap(directorio_jefes_aplicar))
    sincronizador = inspect.getsource(apply_directorio)
    firma = inspect.signature(apply_directorio)

    assert "_sync_directorio_jefes()" not in vista_areas
    assert "_ensure_catalog_areas()" not in vista_areas
    assert "_sync_legacy_area_names()" not in vista_areas
    assert "_sync_directorio_jefes()" in aplicar_directorio
    assert firma.parameters["overwrite_existing"].default is False
    assert "overwrite_existing or not str(emp.get(\"id_user_encargado\") or \"\").strip()" in sincronizador
    print("OK: reinicios y sincronizaciones normales preservan jefes manuales")


if __name__ == "__main__":
    run()
