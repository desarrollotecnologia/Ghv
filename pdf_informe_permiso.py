# -*- coding: utf-8 -*-
"""
Genera el informe PDF del formulario GH-FR-007 (FORMATO DE AUTORIZACION DE PERMISOS / LICENCIAS)
tal cual se ve en el formulario web: caja informativa superior, encabezado, campos con borde,
bloque de firmas con celda verde para la firma digital de Coordinación. Los datos que la persona
diligenció al enviar la solicitud se rellenan automáticamente en cada campo. Este PDF se envía
por correo al aprobar la solicitud.
"""
import os
from datetime import datetime
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

# Paleta corporativa Colbeef
VERDE_TITULO = HexColor("#0b3518") if HexColor else "black"
GRIS_LABEL = HexColor("#374151") if HexColor else "gray"
BORDE = HexColor("#e5e7eb") if HexColor else "gray"
FONDO_HEADER = HexColor("#fafafa") if HexColor else "white"
FONDO_FIRMA = HexColor("#fafafa") if HexColor else "white"
FONDO_HINT = HexColor("#f9fafb") if HexColor else "white"
CELDA_VERDE = HexColor("#f0fdf4") if HexColor else "white"
VERDE_TEXTO = HexColor("#166534") if HexColor else "darkgreen"
VERDE_NOTA = HexColor("#15803d") if HexColor else "darkgreen"
NEGRO_CORP = HexColor("#111827") if HexColor else "black"
GRIS_SUAVE = HexColor("#f3f4f6") if HexColor else "white"
VERDE_BANDA = HexColor("#14532d") if HexColor else "darkgreen"

ANCHO_PAG, ALTO_PAG = (612, 792) if letter is None else letter
MARGEN = 48
ANCHO_CONT = ANCHO_PAG - 2 * MARGEN
RADIO = 8
ALTO_CAMPO = 22
ESP = 14
# Padding interno para que nada se desborde (márgenes visuales)
PAD = 24
# Altura del logo en el encabezado (puntos)
LOGO_HEADER_H = 44
LOGO_HEADER_W_MAX = 130

# Texto de la caja informativa superior (tal cual en la imagen)
TEXTO_INFO_FORMATO = (
    "Este es el formato oficial de autorización de permisos / licencias (GH-FR-007). "
    "El mismo formato es el que usa toda la empresa. Al aprobar, Coordinación Gestión Humana "
    "(coordinacion.gestionhumana@colbeef.com) firmará digitalmente en la celda "
    "'Firma Recibido Gestión Humana' y recibirá el documento por correo."
)


def _fecha_display(val):
    """Devuelve fecha DD-MM-YYYY."""
    if val is None:
        return "—"
    if hasattr(val, "strftime"):
        return val.strftime("%d-%m-%Y")
    s = str(val).strip()
    if not s:
        return "—"
    if len(s) >= 10 and s[4] == "-" and s[7] == "-":
        return f"{s[8:10]}-{s[5:7]}-{s[0:4]}"
    return s


def _hora_display(val):
    """Devuelve hora HH:MM."""
    if val is None:
        return "—"
    if hasattr(val, "strftime"):
        return val.strftime("%H:%M")
    s = str(val).strip()
    if not s:
        return "—"
    if ":" in s:
        return s[:5]
    return s


def _draw_label(c, x, y, texto, font="Helvetica", size=10):
    c.setFont(font, size)
    c.setFillColor(GRIS_LABEL)
    c.drawString(x, y, texto)


def _draw_box_value(c, x, y, w, h, valor, font="Helvetica", size=10):
    c.setStrokeColor(BORDE)
    c.setLineWidth(0.5)
    c.setFillColor(GRIS_SUAVE)
    c.rect(x, y, w, h, stroke=1, fill=1)
    c.setFillColor("black")
    c.setFont(font, size)
    text = str(valor or "").strip() or "—"
    while text and c.stringWidth(text, font, size) > (w - 12):
        text = text[:-1]
    if str(valor or "").strip() and text != str(valor).strip() and len(text) > 2:
        text = text[:-2].rstrip() + ".."
    c.drawString(x + 6, y + (h - size) / 2 - 2, text)


def _draw_multiline_box(c, x, y, w, h, texto, font="Helvetica", size=10, leading=12):
    c.setStrokeColor(BORDE)
    c.setLineWidth(0.5)
    c.setFillColor(GRIS_SUAVE)
    c.rect(x, y, w, h, stroke=1, fill=1)
    c.setFillColor("black")
    c.setFont(font, size)
    words = str(texto or "—").strip().split()
    lines = []
    line = []
    for wtxt in words:
        test = " ".join(line + [wtxt])
        if c.stringWidth(test, font, size) <= (w - 12):
            line.append(wtxt)
        else:
            if line:
                lines.append(" ".join(line))
            line = [wtxt]
    if line:
        lines.append(" ".join(line))
    max_lines = max(1, int((h - 10) / leading))
    lines = lines[:max_lines]
    for i, ln in enumerate(lines):
        c.drawString(x + 6, y + h - 14 - i * leading, ln)


def _draw_paragraph(c, x, y, width, text, font="Helvetica", size=10, leading=14):
    """Dibuja un párrafo con salto de línea por ancho; recorta cada línea al ancho para que no se salga."""
    words = text.split()
    lines = []
    current = []
    for w in words:
        test = " ".join(current + [w])
        if c.stringWidth(test, font, size) <= width:
            current.append(w)
        else:
            if current:
                lines.append(" ".join(current))
            current = [w]
    if current:
        lines.append(" ".join(current))
    for i, line in enumerate(lines):
        # Recortar línea al ancho máximo para que no desborde la caja
        orig = line
        while line and c.stringWidth(line, font, size) > width:
            line = line[:-1]
        if len(line) < len(orig) and len(line) > 2:
            line = line.rstrip()[:-2].rstrip() + ".."
        c.drawString(x, y - i * leading, line)
    return y - len(lines) * leading


def _draw_section_band(c, x, y_top, w, text):
    c.setFillColor(VERDE_BANDA)
    c.setStrokeColor(VERDE_BANDA)
    c.rect(x, y_top - 16, w, 16, stroke=1, fill=1)
    c.setFillColor("white")
    c.setFont("Helvetica-Bold", 8.5)
    c.drawString(x + 8, y_top - 11.5, text)


def _resolver_firma(firma_image_path):
    """Usa la ruta recibida o busca 'firma digital cindy.png' en raíz, static o carpeta superior."""
    if firma_image_path and os.path.isfile(firma_image_path):
        return firma_image_path
    root = os.path.dirname(os.path.abspath(__file__))
    parent = os.path.dirname(root)
    for candidate in (
        os.path.join(root, "firma digital cindy.png"),
        os.path.join(root, "static", "firma digital cindy.png"),
        os.path.join(parent, "firma digital cindy.png"),
    ):
        if os.path.isfile(candidate):
            return candidate
    return None


def _resolver_logo():
    """Ruta al logo Colbeef (PNG o JPG) en static/img."""
    root = os.path.dirname(os.path.abspath(__file__))
    for name in ("logo_colbeef.png", "logo_colbeef.jpg"):
        path = os.path.join(root, "static", "img", name)
        if os.path.isfile(path):
            return path
    return None


def generar_informe_permiso_pdf(solicitud, empleado_nombre, output_path, firma_image_path=None):
    """
    Genera el informe PDF tal cual el formulario: datos diligenciados y firma digital cindy.png
    en la celda Firma Recibido Gestión Humana. Se envía por correo al aprobar.
    """
    if canvas is None:
        return False
    firma_image_path = _resolver_firma(firma_image_path)
    try:
        c = canvas.Canvas(output_path, pagesize=(ANCHO_PAG, ALTO_PAG))
        x_cont = MARGEN
        w_cont = ANCHO_CONT
        y = ALTO_PAG - MARGEN - 12

        # Caja informativa superior
        info_h = 52
        c.setFillColor(FONDO_HINT)
        c.setStrokeColor(BORDE)
        c.setLineWidth(1)
        c.roundRect(x_cont, y - info_h, w_cont, info_h, RADIO, stroke=1, fill=1)
        c.setFillColor(GRIS_LABEL)
        c.setFont("Helvetica", 9)
        _draw_paragraph(
            c, x_cont + 12, y - 12, w_cont - 24,
            TEXTO_INFO_FORMATO, size=8.6, leading=10.5
        )
        y -= info_h + 10

        # Contenedor principal
        main_h = 620
        c.setStrokeColor(BORDE)
        c.setFillColor("white")
        c.roundRect(x_cont, y - main_h, w_cont, main_h, RADIO, stroke=1, fill=1)

        # Header
        header_h = 62
        c.setFillColor(NEGRO_CORP)
        c.rect(x_cont, y - 7, w_cont, 7, stroke=0, fill=1)
        c.setFillColor(FONDO_HEADER)
        c.rect(x_cont, y - header_h, w_cont, header_h, stroke=1, fill=1)
        logo_path = _resolver_logo()
        text_x = x_cont + 12
        if logo_path and Image is not None:
            try:
                with Image.open(logo_path) as img_logo:
                    iw, ih = img_logo.size
                if iw > 0 and ih > 0:
                    logo_h = 40
                    logo_w = min(LOGO_HEADER_W_MAX, logo_h * iw / ih)
                    c.drawImage(logo_path, x_cont + 12, y - header_h + 11, width=logo_w, height=logo_h)
                    text_x = x_cont + 12 + logo_w + 14
            except Exception:
                pass
        c.setFillColor(NEGRO_CORP)
        c.setFont("Helvetica-Bold", 12)
        c.drawString(text_x, y - 24, "COLBEEF S.A.S")
        c.drawString(text_x, y - 40, "GESTION HUMANA")
        c.setFont("Helvetica-Bold", 11)
        c.drawRightString(x_cont + w_cont - 12, y - 24, "Código: GH-FR-007")
        c.drawRightString(x_cont + w_cont - 12, y - 40, "Versión: 01")
        y -= header_h + 10

        # Título
        c.setFillColor(VERDE_TITULO)
        c.setFont("Helvetica-Bold", 14)
        c.drawString(x_cont + 16, y, "FORMATO DE AUTORIZACION DE PERMISOS / LICENCIAS")
        y -= 22

        # Datos
        fecha_cabecera = _fecha_display(
            solicitud.get("fecha_solicitud")
            or solicitud.get("fecha_creacion")
            or solicitud.get("fecha_desde")
            or datetime.now()
        )
        c.setFillColor(GRIS_LABEL)
        c.setFont("Helvetica", 10)
        c.drawString(x_cont + 16, y, f"Fecha: {fecha_cabecera}")
        y -= 24
        _draw_section_band(c, x_cont + 16, y, w_cont - 32, "DATOS DE LA SOLICITUD")
        y -= 24

        id_cedula = str(solicitud.get("id_cedula") or "—")
        area = str(solicitud.get("area") or "—")
        nombre = empleado_nombre or "—"
        fecha_desde = _fecha_display(solicitud.get("fecha_desde"))
        fecha_hasta = _fecha_display(solicitud.get("fecha_hasta"))
        pr = solicitud.get("permiso_remunerado")
        remunerado_txt = "Remunerado" if pr == 1 else ("No Remunerado" if pr == 0 else "—")
        hora_inicio = _hora_display(solicitud.get("hora_inicio"))
        hora_fin = _hora_display(solicitud.get("hora_fin"))
        motivo = str(solicitud.get("motivo") or "—")
        tipo = str(solicitud.get("tipo") or "Permiso")

        sep = 10
        col_w = (w_cont - 32 - 2 * sep) / 3
        x1 = x_cont + 16
        x2 = x1 + col_w + sep
        x3 = x2 + col_w + sep

        _draw_label(c, x1, y, "Fecha")
        _draw_label(c, x2, y, "Área")
        _draw_label(c, x3, y, "Documento de Identidad")
        y -= 16
        _draw_box_value(c, x1, y - ALTO_CAMPO, col_w, ALTO_CAMPO, fecha_cabecera)
        _draw_box_value(c, x2, y - ALTO_CAMPO, col_w, ALTO_CAMPO, area)
        _draw_box_value(c, x3, y - ALTO_CAMPO, col_w, ALTO_CAMPO, id_cedula)
        y -= ALTO_CAMPO + 12

        _draw_label(c, x_cont + 16, y, "Nombre Completo")
        y -= 16
        _draw_box_value(c, x_cont + 16, y - ALTO_CAMPO, w_cont - 32, ALTO_CAMPO, nombre)
        y -= ALTO_CAMPO + 12

        _draw_label(c, x_cont + 16, y, "Fecha del permiso / Licencia")
        y -= 16
        _draw_box_value(c, x_cont + 16, y - ALTO_CAMPO, w_cont - 32, ALTO_CAMPO, f"{fecha_desde} a {fecha_hasta}")
        y -= ALTO_CAMPO + 12

        _draw_label(c, x_cont + 16, y, "Permiso remunerado / Permiso no remunerado")
        y -= 16
        _draw_box_value(c, x_cont + 16, y - ALTO_CAMPO, 220, ALTO_CAMPO, remunerado_txt)
        c.setFillColor(GRIS_LABEL)
        c.setFont("Helvetica", 8.5)
        c.drawString(x_cont + 16, y - ALTO_CAMPO - 12, "Si es no remunerado debe adjuntar evidencia (PDF o imagen).")
        y -= ALTO_CAMPO + 28

        mid_w = (w_cont - 32 - sep) / 2
        _draw_label(c, x_cont + 16, y, "Hora de Inicio")
        _draw_label(c, x_cont + 16 + mid_w + sep, y, "Hora Final")
        y -= 16
        _draw_box_value(c, x_cont + 16, y - ALTO_CAMPO, mid_w, ALTO_CAMPO, hora_inicio)
        _draw_box_value(c, x_cont + 16 + mid_w + sep, y - ALTO_CAMPO, mid_w, ALTO_CAMPO, hora_fin)
        y -= ALTO_CAMPO + 12

        _draw_label(c, x_cont + 16, y, "Motivo")
        y -= 16
        _draw_multiline_box(c, x_cont + 16, y - 58, w_cont - 32, 58, motivo, size=9.5, leading=11)
        y -= 58 + 12

        _draw_label(c, x_cont + 16, y, "Tipo")
        y -= 16
        _draw_box_value(c, x_cont + 16, y - ALTO_CAMPO, 230, ALTO_CAMPO, tipo)
        y -= ALTO_CAMPO + 16

        c.setStrokeColor(BORDE)
        c.line(x_cont + 16, y, x_cont + w_cont - 16, y)
        y -= 14
        _draw_section_band(c, x_cont + 16, y, w_cont - 32, "FIRMAS Y APROBACIÓN")
        y -= 24

        # Bloque de firmas
        alto_celda = 104
        ancho_celda = (w_cont - 32) / 3
        y_celda = y - alto_celda
        pad = 8

        # Firma solicitante
        c.setFillColor(FONDO_FIRMA)
        c.rect(x_cont + 16, y_celda, ancho_celda, alto_celda, stroke=1, fill=1)
        c.setFillColor("black")
        c.setFont("Helvetica-Bold", 8.5)
        c.drawString(x_cont + 16 + pad, y_celda + alto_celda - 14, "FIRMA SOLICITANTE")
        c.setFont("Helvetica", 8)
        c.setFillColor(GRIS_LABEL)
        _draw_paragraph(c, x_cont + 16 + pad, y_celda + alto_celda - 28, ancho_celda - 2 * pad, f"Nombre: {nombre}", size=7.5, leading=9)
        c.drawString(x_cont + 16 + pad, y_celda + 10, f"C.C: {id_cedula}")

        # VB jefe
        x_vb = x_cont + 16 + ancho_celda
        c.setFillColor(FONDO_FIRMA)
        c.rect(x_vb, y_celda, ancho_celda, alto_celda, stroke=1, fill=1)
        c.setFillColor("black")
        c.setFont("Helvetica-Bold", 8.5)
        c.drawString(x_vb + pad, y_celda + alto_celda - 14, "V.B JEFE INMEDIATO")

        # GH
        x_gh = x_cont + 16 + 2 * ancho_celda
        c.setFillColor(CELDA_VERDE)
        c.rect(x_gh, y_celda, ancho_celda, alto_celda, stroke=1, fill=1)
        c.setFillColor(VERDE_TEXTO)
        c.setFont("Helvetica-Bold", 8)
        c.drawString(x_gh + pad, y_celda + alto_celda - 14, "FIRMA RECIBIDO")
        c.drawString(x_gh + pad, y_celda + alto_celda - 25, "GESTION HUMANA")
        c.setFillColor(VERDE_NOTA)
        c.setFont("Helvetica", 7)
        c.drawString(x_gh + pad, y_celda + alto_celda - 38, "Se firma digitalmente")

        if firma_image_path and os.path.isfile(firma_image_path) and Image is not None:
            try:
                with Image.open(firma_image_path) as img:
                    iw, ih = img.size
                if iw > 0 and ih > 0:
                    firma_w = min(92, 92 * iw / ih)
                    firma_h = min(34, 34 * ih / iw)
                    c.drawImage(
                        firma_image_path,
                        x_gh + (ancho_celda - firma_w) / 2,
                        y_celda + 26,
                        width=firma_w,
                        height=firma_h,
                    )
            except Exception:
                pass
        c.setFillColor("black")
        c.setFont("Helvetica", 7)
        c.drawString(x_gh + pad, y_celda + 8, "Coordinación Gestión Humana")

        # Pie corporativo mínimo
        c.setFont("Helvetica", 7)
        c.setFillColor(GRIS_LABEL)
        c.drawRightString(x_cont + w_cont - 16, y_cont + 10, "Documento generado automáticamente por Gestión Humana - Colbeef")

        c.save()
        return True
    except Exception:
        return False
