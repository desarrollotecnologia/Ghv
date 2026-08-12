"""Check de la semaforización de cursos de alturas: VIGENTE / POR VENCER / VENCIDO."""
from datetime import date, timedelta
from app import _curso_altura_estado, _CURSO_ALTURA_DIAS_AVISO

HOY = date(2026, 8, 11)


def _estado(dias):
    return _curso_altura_estado(HOY + timedelta(days=dias), HOY)[0]


# Vencido: la fecha fin ya pasó.
assert _estado(-1) == "VENCIDO", _estado(-1)
assert _estado(-40) == "VENCIDO"

# Por vencer: entre hoy y el umbral (15 días) inclusive.
assert _estado(0) == "POR VENCER"
assert _estado(_CURSO_ALTURA_DIAS_AVISO) == "POR VENCER"
assert _estado(10) == "POR VENCER"

# Vigente: más allá del umbral.
assert _estado(_CURSO_ALTURA_DIAS_AVISO + 1) == "VIGENTE"
assert _estado(400) == "VIGENTE"

# Sin fecha fin.
assert _curso_altura_estado(None, HOY) == ("SIN FECHA", None)

# Días restantes correctos (signo).
assert _curso_altura_estado(HOY + timedelta(days=12), HOY) == ("POR VENCER", 12)
assert _curso_altura_estado(HOY - timedelta(days=12), HOY) == ("VENCIDO", -12)

print("OK: semaforización cursos de alturas correcta")
