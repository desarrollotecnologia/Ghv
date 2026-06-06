# -*- coding: utf-8 -*-
"""
Certificado laboral Colbeef S.A.S — formato área de Gestión Humana.
Datos dinámicos: nombre, cédula, fecha ingreso, cargo, renovación (ANUAL/TRIMESTRAL).
Salarios/auxilios: estructura sin valores (pendiente integración nómina).
"""
import os
from datetime import date, datetime
from io import BytesIO

try:
    from reportlab.lib.pagesizes import letter
    from reportlab.pdfgen import canvas
    from reportlab.lib.colors import HexColor
except ImportError:  # pragma: no cover
    letter = None
    canvas = None
    HexColor = None

try:
    from PIL import Image
except ImportError:  # pragma: no cover
    Image = None

ANCHO_PAG, ALTO_PAG = (612, 792) if letter is None else letter
MARGEN_X = 56
MARGEN_Y = 56
ANCHO_TEXTO = ANCHO_PAG - 2 * MARGEN_X
LOGO_MARGEN_SUPERIOR = 14   # logo más arriba
CONTENIDO_DESDE_ARRIBA = 168  # título y cuerpo más abajo

VERDE_FOOTER = HexColor("#1a7a32") if HexColor else "green"
NEGRO = HexColor("#111111") if HexColor else "black"
GRIS = HexColor("#333333") if HexColor else "gray"

MESES_ES = (
    "enero", "febrero", "marzo", "abril", "mayo", "junio",
    "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre",
)

FIRMA_NOMBRE = "CINDY LEOMAR VERA MORA"
FIRMA_CARGO = "Coordinadora de Gestión Humana"
FIRMA_TEL = "Tel: 317 3647940"


def _fecha_larga_es(val):
    if val is None:
        d = date.today()
    elif hasattr(val, "year"):
        d = val if isinstance(val, date) else val.date()
    else:
        s = str(val).strip()
        d = None
        for fmt in ("%d/%m/%Y", "%d-%m-%Y", "%Y-%m-%d", "%d/%m/%y"):
            try:
                d = datetime.strptime(s[:10], fmt).date()
                break
            except ValueError:
                continue
        if d is None:
            return str(val)
    return f"{d.day:02d} de {MESES_ES[d.month - 1]} de {d.year}"


def _resolver_logo():
    root = os.path.dirname(os.path.abspath(__file__))
    for name in ("logo_colbeef.png", "logo_colbeef.jpg"):
        path = os.path.join(root, "static", "img", name)
        if os.path.isfile(path):
            return path
    return None


def _resolver_firma(firma_image_path):
    if firma_image_path and os.path.isfile(firma_image_path):
        return firma_image_path
    root = os.path.dirname(os.path.abspath(__file__))
    for candidate in (
        os.path.join(root, "firma digital cindy.png"),
        os.path.join(root, "static", "firma digital cindy.png"),
        os.path.join(root, "instance", "static", "firma_coordinacion.png"),
    ):
        if os.path.isfile(candidate):
            return candidate
    return None


def _embed_image_path(image_path, max_px=900):
    """Convierte imagen a JPEG temporal para PDF (mejor compatibilidad con visores)."""
    if not image_path or not Image or not os.path.isfile(image_path):
        return image_path
    try:
        import tempfile
        with Image.open(image_path) as img:
            img = img.convert("RGB")
            w, h = img.size
            if max(w, h) > max_px:
                scale = max_px / float(max(w, h))
                img = img.resize((int(w * scale), int(h * scale)), Image.Resampling.LANCZOS)
            fd, tmp = tempfile.mkstemp(suffix=".jpg")
            os.close(fd)
            img.save(tmp, format="JPEG", quality=85, optimize=True)
            return tmp
    except Exception:
        return image_path


def _font_name(bold):
    return "Helvetica-Bold" if bold else "Helvetica"


def _seg_width(c, text, bold, size=11):
    return c.stringWidth(text, _font_name(bold), size)


def _wrap_mixed_segments(c, segments, max_width, size=11):
    """Parte el párrafo en líneas respetando negritas."""
    lines = []
    line = []
    line_w = 0.0

    def flush():
        nonlocal line, line_w
        if line:
            lines.append(line)
            line = []
            line_w = 0.0

    for text, bold in segments:
        if not text:
            continue
        parts = text.split(" ")
        for idx, word in enumerate(parts):
            prefix = "" if idx == 0 else " "
            chunk = prefix + word
            w = _seg_width(c, chunk, bold, size)
            if line_w + w <= max_width or not line:
                line.append((chunk, bold))
                line_w += w
            else:
                flush()
                line.append((word, bold))
                line_w = _seg_width(c, word, bold, size)
    flush()
    return lines


def _draw_mixed_line(c, x, y, parts, size=11):
    c.setFillColor(NEGRO)
    cx = x
    for text, bold in parts:
        c.setFont(_font_name(bold), size)
        c.drawString(cx, y, text)
        cx += _seg_width(c, text, bold, size)


def _draw_mixed_paragraph(c, x, y, width, segments, size=11, leading=17):
    for parts in _wrap_mixed_segments(c, segments, width, size):
        _draw_mixed_line(c, x, y, parts, size)
        y -= leading
    return y


def _draw_linea_valor(c, x, y, etiqueta):
    c.setFillColor(NEGRO)
    c.setFont("Helvetica-Bold", 11)
    c.drawString(x, y, etiqueta)
    x_val = x + c.stringWidth(etiqueta, "Helvetica-Bold", 11) + 6
    c.setFont("Helvetica", 11)
    c.drawString(x_val, y, "($ __________________ ).")
    return y - 22


def _draw_texto_firma_bloque(c, x, y, firma_path, tmp_images):
    c.setFillColor(NEGRO)
    c.setFont("Helvetica", 11)
    c.drawString(x, y, "Atentamente,")
    y -= 44

    if firma_path:
        try:
            firma_embed = _embed_image_path(firma_path, max_px=600)
            if firma_embed != firma_path:
                tmp_images.append(firma_embed)
            with Image.open(firma_embed) as img_f:
                iw, ih = img_f.size
            if iw > 0 and ih > 0:
                sig_h = 52
                sig_w = min(150, sig_h * iw / ih)
                c.drawImage(
                    firma_embed,
                    x,
                    y - sig_h + 8,
                    width=sig_w,
                    height=sig_h,
                    preserveAspectRatio=True,
                )
                y -= sig_h + 8
        except Exception:
            y -= 12
    else:
        y -= 16

    c.setFont("Helvetica-Bold", 11)
    c.drawString(x, y, FIRMA_NOMBRE)
    y -= 15
    c.drawString(x, y, FIRMA_CARGO)
    y -= 15
    c.drawString(x, y, FIRMA_TEL)
    return y


def generar_certificado_laboral_pdf(empleado, output_path, firma_image_path=None):
    """
    Genera certificado laboral en PDF.

    empleado: dict con apellidos_nombre, id_cedula, sexo, fecha_ingreso,
              perfil_ocupacional_nombre (cargo), renovacion ('ANUAL'|'TRIMESTRAL').
    """
    if canvas is None:
        return False

    nombre = (empleado.get("apellidos_nombre") or "—").strip().upper()
    cedula = str(empleado.get("id_cedula") or "—").strip()
    cargo = (empleado.get("perfil_ocupacional_nombre") or empleado.get("cargo") or "—").strip().upper()
    renovacion = (empleado.get("renovacion") or "TRIMESTRAL").strip().upper()
    if renovacion not in ("ANUAL", "TRIMESTRAL"):
        renovacion = "TRIMESTRAL"

    sexo = (empleado.get("sexo") or "").strip().upper()
    if sexo == "F":
        tratamiento = "la señora"
        identificado = "identificada"
        vinculado = "vinculada"
    else:
        tratamiento = "el señor"
        identificado = "identificado"
        vinculado = "vinculado"

    fecha_ingreso_txt = _fecha_larga_es(empleado.get("fecha_ingreso"))
    fecha_expide_txt = _fecha_larga_es(date.today())
    firma_path = _resolver_firma(firma_image_path)
    logo_path = _resolver_logo()
    tmp_images = []

    try:
        c = canvas.Canvas(output_path, pagesize=(ANCHO_PAG, ALTO_PAG))

        if logo_path and Image is not None:
            try:
                logo_embed = _embed_image_path(logo_path, max_px=400)
                if logo_embed != logo_path:
                    tmp_images.append(logo_embed)
                with Image.open(logo_embed) as img:
                    iw, ih = img.size
                if iw > 0 and ih > 0:
                    logo_h = 44
                    logo_w = min(125, logo_h * iw / ih)
                    logo_y = ALTO_PAG - LOGO_MARGEN_SUPERIOR - logo_h
                    c.drawImage(
                        logo_embed,
                        ANCHO_PAG - MARGEN_X - logo_w,
                        logo_y,
                        width=logo_w,
                        height=logo_h,
                        preserveAspectRatio=True,
                    )
            except Exception:
                pass

        c.setFillColor(NEGRO)
        header_y = ALTO_PAG - CONTENIDO_DESDE_ARRIBA
        c.setFont("Helvetica-Bold", 12)
        c.drawCentredString(ANCHO_PAG / 2, header_y, "EL AREA DE GESTION HUMANA DE COLBEEF S.A.S")
        c.drawCentredString(ANCHO_PAG / 2, header_y - 18, "NIT: 900.087.044-2")
        y = header_y - 44
        c.setFont("Helvetica-Bold", 14)
        c.drawCentredString(ANCHO_PAG / 2, y, "CERTIFICA:")
        y -= 40

        segmentos = [
            ("Que ", False),
            (tratamiento + " ", False),
            (nombre, True),
            (f", {identificado} con número de cédula de ciudadanía ", False),
            (cedula, True),
            (f", se encuentra {vinculado} a nuestra empresa desde el ", False),
            (fecha_ingreso_txt, True),
            (" mediante contrato de trabajo renovable ", False),
            (renovacion, True),
            (" con el cargo de ", False),
            (cargo, True),
            (", devengando los siguientes valores:", False),
        ]
        y = _draw_mixed_paragraph(c, MARGEN_X, y, ANCHO_TEXTO, segmentos, size=11, leading=18)
        y -= 16

        y = _draw_linea_valor(c, MARGEN_X, y, "SALARIO BÁSICO MENSUAL:")
        y = _draw_linea_valor(c, MARGEN_X, y, "AUXILIO DE TRANSPORTE:")
        y = _draw_linea_valor(c, MARGEN_X, y, "AUXILIO DE MOVILIDAD NO SALARIAL:")
        y -= 18

        pref = "Se expide en Floridablanca el "
        c.setFont("Helvetica", 11)
        c.drawString(MARGEN_X, y, pref)
        c.setFont("Helvetica-Bold", 11)
        c.drawString(MARGEN_X + c.stringWidth(pref, "Helvetica", 11), y, f"{fecha_expide_txt}.")
        y -= 40

        _draw_texto_firma_bloque(c, MARGEN_X, y, firma_path, tmp_images)

        footer_y = 72
        c.setStrokeColor(VERDE_FOOTER)
        c.setLineWidth(2)
        c.line(MARGEN_X, footer_y + 28, ANCHO_PAG - MARGEN_X, footer_y + 28)

        c.setFillColor(NEGRO)
        c.setFont("Helvetica-Bold", 9)
        c.drawCentredString(ANCHO_PAG / 2, footer_y + 14, "COLBEEF S.A.S NIT 900087044-2")
        c.setFont("Helvetica", 8)
        c.drawCentredString(
            ANCHO_PAG /  2, footer_y,
            "OFICINA PRINCIPAL Vía Corredor Río Frío Calle 210 N 9-631, Floridablanca, Santander",
        )
        c.drawCentredString(ANCHO_PAG / 2, footer_y - 12, "Contacto: 317 6387359")
        c.drawCentredString(ANCHO_PAG / 2, footer_y - 24, "Email: info@colbeef.com")

        c.save()
        return True
    except Exception:
        return False
    finally:
        for p in tmp_images:
            try:
                os.unlink(p)
            except Exception:
                pass


def generar_certificado_laboral_bytes(empleado, firma_image_path=None):
    """Genera el PDF en memoria y devuelve bytes o None."""
    if canvas is None:
        return None
    import tempfile
    fd, tmp_path = tempfile.mkstemp(suffix=".pdf")
    os.close(fd)
    try:
        ok = generar_certificado_laboral_pdf(empleado, tmp_path, firma_image_path)
        if not ok:
            return None
        with open(tmp_path, "rb") as f:
            return f.read()
    finally:
        try:
            os.unlink(tmp_path)
        except Exception:
            pass
