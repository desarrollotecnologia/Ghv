# -*- coding: utf-8 -*-
"""
Firma digital sobre PDF: superpone una imagen de firma en un PDF existente
(por ejemplo el formato de autorización de permiso GH-FR-007).
Usa pypdf para leer/escribir y reportlab para generar la capa de firma.
"""
import os
from io import BytesIO

try:
    from pypdf import PdfReader, PdfWriter
    from reportlab.pdfgen import canvas
    from PIL import Image
except ImportError:
    PdfReader = PdfWriter = canvas = Image = None


# Tamaño máximo de la firma en el PDF (puntos: 1/72 inch). Ajustar si hace falta.
FIRMA_ANCHO_MAX = 120
FIRMA_ALTO_MAX = 50
MARGEN = 40


def firmar_pdf(pdf_path, firma_image_path, output_path, posicion="bottom_right"):
    """
    Superpone la imagen de firma sobre la primera página del PDF y guarda en output_path.

    :param pdf_path: ruta del PDF original (ej. evidencia del permiso).
    :param firma_image_path: ruta de la imagen de firma (PNG/JPG recomendado).
    :param output_path: ruta donde guardar el PDF firmado.
    :param posicion: "bottom_right" (por defecto), "bottom_left", "top_right", "top_left".
    :return: True si se generó correctamente, False si falta librería o archivo.
    """
    if PdfReader is None or canvas is None:
        return False
    if not os.path.isfile(pdf_path) or not os.path.isfile(firma_image_path):
        return False

    try:
        reader = PdfReader(pdf_path)
        if len(reader.pages) == 0:
            return False
        page = reader.pages[0]
        mb = page.mediabox
        ancho_pag = float(mb.width)
        alto_pag = float(mb.height)

        # Imagen de firma: limitar tamaño para que no tape mucho
        with Image.open(firma_image_path) as img_pil:
            iw, ih = img_pil.size
        if iw <= 0 or ih <= 0:
            return False
        ratio = min(FIRMA_ANCHO_MAX / iw, FIRMA_ALTO_MAX / ih, 1.0)
        w_sig = iw * ratio
        h_sig = ih * ratio

        # Posición según parámetro (esquinas)
        if posicion == "bottom_right":
            x = ancho_pag - w_sig - MARGEN
            y = MARGEN
        elif posicion == "bottom_left":
            x = MARGEN
            y = MARGEN
        elif posicion == "top_right":
            x = ancho_pag - w_sig - MARGEN
            y = alto_pag - h_sig - MARGEN
        else:  # top_left
            x = MARGEN
            y = alto_pag - h_sig - MARGEN

        # Capa de firma (mismo tamaño que la página)
        buffer = BytesIO()
        c = canvas.Canvas(buffer, pagesize=(ancho_pag, alto_pag))
        c.drawImage(firma_image_path, x, y, width=w_sig, height=h_sig)
        c.save()
        buffer.seek(0)
        overlay_reader = PdfReader(buffer)
        overlay_page = overlay_reader.pages[0]

        # Fusionar firma sobre la primera página
        page.merge_transformed_page(overlay_page, over=True)

        writer = PdfWriter()
        writer.add_page(page)
        for i in range(1, len(reader.pages)):
            writer.add_page(reader.pages[i])
        with open(output_path, "wb") as f:
            writer.write(f)
        return True
    except Exception:
        return False
