# -*- coding: utf-8 -*-
"""Utilidad CIE-10 para el módulo Control de estado.

- CIE10_SEED: códigos vistos en el Excel de Colbeef (código -> descripción + agrupado).
- cie10_chapter(): capítulo CIE-10 (agrupación estándar) para códigos no sembrados.
- cie10_lookup(): dado un código, devuelve descripción + agrupado + clasificación formateada.

ponytail: la semilla cubre los diagnósticos reales usados hoy; para códigos nuevos se
cae al capítulo CIE-10 (agrupación estándar). Mejora futura: cargar el catálogo CIE-10
completo (CSV oficial) en una tabla y consultarlo aquí sin tocar el resto del código.
"""
import re

# Código -> (descripción oficial resumida, agrupado clínico) tomado del Excel de SISO.
CIE10_SEED = {
    "G56.0":  ("Síndrome del túnel carpiano", "SÍNDROME DEL TÚNEL CARPIANO Y NEUROPATÍAS (CIE-10: G56)"),
    "G56.01": ("Síndrome del túnel carpiano derecho", "SÍNDROME DEL TÚNEL CARPIANO Y NEUROPATÍAS (CIE-10: G56)"),
    "G56.03": ("Síndrome del túnel carpiano bilateral", "SÍNDROME DEL TÚNEL CARPIANO Y NEUROPATÍAS (CIE-10: G56)"),
    "I10":    ("Hipertensión esencial", "ENFERMEDADES GENERALES (CIE-10: I10 – I51)"),
    "I51.9":  ("Alteración cardiovascular no especificada", "ENFERMEDADES GENERALES (CIE-10: I10 – I51)"),
    "K37":    ("Apendicitis, no especificada", "ENFERMEDADES DEL SISTEMA DIGESTIVO (CIE-10: K00 – K93)"),
    "M51.9":  ("Trastornos de disco lumbar", "COLUMNA VERTEBRAL (CIE-10: M51 – M54)"),
    "M54.5":  ("Dolor lumbar", "COLUMNA VERTEBRAL (CIE-10: M51 – M54)"),
    "M75.1":  ("Síndrome del manguito rotador", "HOMBRO Y TEJIDOS BLANDOS (CIE-10: M75 – M79)"),
    "M79.6":  ("Lesión osteomuscular en mano/miembro", "HOMBRO Y TEJIDOS BLANDOS (CIE-10: M75 – M79)"),
    "S00.9":  ("Traumatismo superficial de la cabeza", "TRAUMATISMOS DE CABEZA (CIE-10: S00)"),
    "S30":    ("Contusión de la región lumbosacra", "CONTUSIONES (CIE-10: S30 – S60)"),
    "S51.9":  ("Herida abierta de antebrazo", "LESIONES DE MANO, MUÑECA Y ANTEBRAZO (CIE-10: S51 – S56 – S61)"),
    "S52.9":  ("Fractura de cúbito y radio", "FRACTURAS (CIE-10: S52 – S62 – S82)"),
    "S56.9":  ("Herida de antebrazo con compromiso de tendón", "LESIONES DE MANO, MUÑECA Y ANTEBRAZO (CIE-10: S51 – S56 – S61)"),
    "S60.0":  ("Contusión de dedo sin daño de uña", "CONTUSIONES (CIE-10: S30 – S60)"),
    "S61.4":  ("Herida de mano", "LESIONES DE MANO, MUÑECA Y ANTEBRAZO (CIE-10: S51 – S56 – S61)"),
    "S61.9":  ("Herida de la muñeca y mano, no especificada", "LESIONES DE MANO, MUÑECA Y ANTEBRAZO (CIE-10: S51 – S56 – S61)"),
    "S62.3":  ("Fractura de huesos metacarpianos", "FRACTURAS (CIE-10: S52 – S62 – S82)"),
    "S62.6":  ("Fractura de dedo", "FRACTURAS (CIE-10: S52 – S62 – S82)"),
    "S66.8":  ("Traumatismo de múltiples tendones y músculos", "LESIONES DE MANO, MUÑECA Y ANTEBRAZO (CIE-10: S51 – S56 – S61)"),
    "S68.1":  ("Amputación traumática parcial de dedo", "AMPUTACIONES TRAUMÁTICAS (CIE-10: S68)"),
    "S69.9":  ("Traumatismo no especificado de muñeca y mano", "LESIONES DE MANO, MUÑECA Y ANTEBRAZO (CIE-10: S51 – S56 – S61)"),
    "S82.2":  ("Fractura de la diáfisis de la tibia", "FRACTURAS (CIE-10: S52 – S62 – S82)"),
    "S82.8":  ("Fractura de tobillo/otras", "FRACTURAS (CIE-10: S52 – S62 – S82)"),
    "S89.9":  ("Lesión de miembro inferior no especificada", "LESIONES DE MIEMBRO INFERIOR (CIE-10: S89)"),
}

# Capítulos CIE-10 (letra, num_ini, num_fin, título). Agrupación estándar de respaldo.
_CHAPTERS = [
    ("A", 0, 99, "ENFERMEDADES INFECCIOSAS Y PARASITARIAS (A00 – B99)"),
    ("B", 0, 99, "ENFERMEDADES INFECCIOSAS Y PARASITARIAS (A00 – B99)"),
    ("C", 0, 99, "NEOPLASIAS (C00 – D48)"),
    ("D", 0, 48, "NEOPLASIAS (C00 – D48)"),
    ("D", 50, 89, "ENFERMEDADES DE LA SANGRE E INMUNIDAD (D50 – D89)"),
    ("E", 0, 90, "ENFERMEDADES ENDOCRINAS, NUTRICIONALES Y METABÓLICAS (E00 – E90)"),
    ("F", 0, 99, "TRASTORNOS MENTALES Y DEL COMPORTAMIENTO (F00 – F99)"),
    ("G", 0, 99, "ENFERMEDADES DEL SISTEMA NERVIOSO (G00 – G99)"),
    ("H", 0, 59, "ENFERMEDADES DEL OJO Y SUS ANEXOS (H00 – H59)"),
    ("H", 60, 95, "ENFERMEDADES DEL OÍDO (H60 – H95)"),
    ("I", 0, 99, "ENFERMEDADES DEL SISTEMA CIRCULATORIO (I00 – I99)"),
    ("J", 0, 99, "ENFERMEDADES DEL SISTEMA RESPIRATORIO (J00 – J99)"),
    ("K", 0, 93, "ENFERMEDADES DEL SISTEMA DIGESTIVO (K00 – K93)"),
    ("L", 0, 99, "ENFERMEDADES DE LA PIEL Y TEJIDO SUBCUTÁNEO (L00 – L99)"),
    ("M", 0, 99, "ENFERMEDADES DEL SISTEMA OSTEOMUSCULAR Y TEJIDO CONJUNTIVO (M00 – M99)"),
    ("N", 0, 99, "ENFERMEDADES DEL SISTEMA GENITOURINARIO (N00 – N99)"),
    ("O", 0, 99, "EMBARAZO, PARTO Y PUERPERIO (O00 – O99)"),
    ("P", 0, 96, "AFECCIONES DEL PERIODO PERINATAL (P00 – P96)"),
    ("Q", 0, 99, "MALFORMACIONES CONGÉNITAS (Q00 – Q99)"),
    ("R", 0, 99, "SÍNTOMAS Y SIGNOS NO CLASIFICADOS (R00 – R99)"),
    ("S", 0, 99, "TRAUMATISMOS Y LESIONES (S00 – T98)"),
    ("T", 0, 98, "TRAUMATISMOS, ENVENENAMIENTOS Y CAUSAS EXTERNAS (S00 – T98)"),
    ("V", 1, 99, "CAUSAS EXTERNAS DE MORBILIDAD Y MORTALIDAD (V01 – Y98)"),
    ("W", 0, 99, "CAUSAS EXTERNAS DE MORBILIDAD Y MORTALIDAD (V01 – Y98)"),
    ("X", 0, 99, "CAUSAS EXTERNAS DE MORBILIDAD Y MORTALIDAD (V01 – Y98)"),
    ("Y", 0, 98, "CAUSAS EXTERNAS DE MORBILIDAD Y MORTALIDAD (V01 – Y98)"),
    ("Z", 0, 99, "FACTORES QUE INFLUYEN EN EL ESTADO DE SALUD (Z00 – Z99)"),
    ("U", 0, 99, "CÓDIGOS PARA PROPÓSITOS ESPECIALES (U00 – U99)"),
]

_CODE_RE = re.compile(r"^\s*([A-Za-z])\s*(\d{1,2})\.?(\d*)")


def normalizar_codigo(code):
    """'s82.2' -> 'S82.2'. Devuelve None si no parece un código CIE-10."""
    if not code:
        return None
    m = _CODE_RE.match(str(code))
    if not m:
        return None
    letra, num, dec = m.group(1).upper(), m.group(2), m.group(3)
    return f"{letra}{int(num):02d}" + (f".{dec}" if dec else "")  # 'M545' -> 'M54.5', 'S82.2' -> 'S82.2'


def cie10_chapter(code):
    """Capítulo CIE-10 (agrupación estándar) del código, o None."""
    norm = normalizar_codigo(code)
    if not norm:
        return None
    letra = norm[0]
    num = int(norm[1:3])
    for l, ini, fin, titulo in _CHAPTERS:
        if l == letra and ini <= num <= fin:
            return titulo
    return None


def cie10_lookup(code):
    """Devuelve dict {codigo, descripcion, agrupado, clasificacion} para autocompletar.
    Usa la semilla del Excel; si no está, deja descripción vacía y agrupa por capítulo."""
    norm = normalizar_codigo(code)
    if not norm:
        return None
    desc, grupo = "", None
    if norm in CIE10_SEED:
        desc, grupo = CIE10_SEED[norm]
    elif norm[:3] in CIE10_SEED:  # p.ej. S82 sin decimal
        desc, grupo = CIE10_SEED[norm[:3]]
    if not grupo:
        grupo = cie10_chapter(norm)
    clasificacion = f"{norm} → {desc}".strip(" →") if desc else norm
    return {"codigo": norm, "descripcion": desc, "agrupado": grupo or "", "clasificacion": clasificacion}


if __name__ == "__main__":
    for c in ("s82.2", "M545", "J45.0", "z00", "xxx"):
        print(c, "->", cie10_lookup(c))
