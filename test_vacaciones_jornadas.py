"""Autoverificación mínima de las reglas de días pagados de vacaciones."""

from app import (
    _JORNADA_VACACIONES_LUNES_SABADO,
    _JORNADA_VACACIONES_LUNES_VIERNES,
    _JORNADA_VACACIONES_MIXTO,
    _calcular_dias_vacaciones,
    _jornada_vacaciones,
)


def run():
    cedula_lunes_viernes = "1007579486"
    cedula_mixta = "1095820357"
    cedula_lunes_sabado = "80424220"

    assert _jornada_vacaciones(cedula_lunes_viernes) == _JORNADA_VACACIONES_LUNES_VIERNES
    assert _jornada_vacaciones(cedula_mixta) == _JORNADA_VACACIONES_MIXTO
    assert _jornada_vacaciones(cedula_lunes_sabado) == _JORNADA_VACACIONES_LUNES_SABADO

    # 06–18 julio de 2026: diez lunes-viernes y dos sábados, sin festivos.
    assert _calcular_dias_vacaciones("2026-07-06", "2026-07-18", cedula_lunes_viernes) == 10
    assert _calcular_dias_vacaciones("2026-07-06", "2026-07-18", cedula_lunes_sabado) == 12
    assert _calcular_dias_vacaciones("2026-07-06", "2026-07-18", cedula_mixta) == 11

    # El 20 de julio es festivo y nunca se cuenta.
    assert _calcular_dias_vacaciones("2026-07-20", "2026-07-20", cedula_lunes_sabado) == 0

    # En mixto: primer sábado no festivo sí, segundo no, tercero sí.
    assert _calcular_dias_vacaciones("2026-07-11", "2026-07-11", cedula_mixta) == 1
    assert _calcular_dias_vacaciones("2026-07-11", "2026-07-18", cedula_mixta) == 6
    assert _calcular_dias_vacaciones("2026-07-11", "2026-07-25", cedula_mixta) == 11

    print("OK: reglas de vacaciones verificadas")


if __name__ == "__main__":
    run()
