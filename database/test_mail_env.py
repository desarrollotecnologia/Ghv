"""
Prueba la configuración de correo (.env): conexión SMTP y envío de un correo de prueba.
Ejecutar desde la raíz del proyecto:

    python database/test_mail_env.py

Asegúrate de tener MAIL_PASSWORD en .env (sin espacios si es contraseña de aplicación).
"""

import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)
os.chdir(ROOT)

from dotenv import load_dotenv
load_dotenv(os.path.join(ROOT, ".env"))

import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from email.utils import formataddr


def main():
    host = os.getenv("MAIL_HOST", "")
    port = int(os.getenv("MAIL_PORT", "465"))
    user = os.getenv("MAIL_USER", "")
    password = os.getenv("MAIL_PASSWORD", "")
    from_addr = os.getenv("MAIL_FROM", user)
    # Destino de la prueba: MAIL_TEST_TO (ej. tecnologia@colbeef.com) o MAIL_GH_PERMISOS o MAIL_PRUEBAS_CC
    to_test = (
        os.getenv("MAIL_TEST_TO", "").strip()
        or os.getenv("MAIL_GH_PERMISOS", "").strip()
        or (os.getenv("MAIL_PRUEBAS_CC", "").split(",")[0].strip() if os.getenv("MAIL_PRUEBAS_CC") else "")
    )

    if not host or not user:
        print("Falta MAIL_HOST o MAIL_USER en .env")
        sys.exit(1)
    if not password:
        print("MAIL_PASSWORD está vacío en .env. Añade la contraseña (sin espacios).")
        sys.exit(1)
    if not to_test:
        print("Indica MAIL_TEST_TO, MAIL_GH_PERMISOS o MAIL_PRUEBAS_CC en .env para enviar el correo de prueba.")
        sys.exit(1)

    subject = "[Prueba] Gestión Humana - Configuración de correo OK"
    body = "Si recibes este correo, la configuración SMTP (.env) es correcta."

    msg = MIMEMultipart("alternative")
    msg["Subject"] = subject
    msg["From"] = formataddr(("Gestión Humana Colbeef", from_addr or user))
    msg["To"] = to_test
    msg.attach(MIMEText(body, "plain", "utf-8"))
    msg.attach(MIMEText(f"<p>{body}</p>", "html", "utf-8"))

    try:
        with smtplib.SMTP_SSL(host, port) as s:
            s.login(user, password)
            s.sendmail(from_addr or user, [to_test], msg.as_string())
        print(f"OK. Correo de prueba enviado a: {to_test}")
        print("Revisa la bandeja (y spam) de ese correo.")
    except smtplib.SMTPAuthenticationError as e:
        print(f"Error de autenticación (usuario/contraseña incorrectos): {e}")
        sys.exit(1)
    except Exception as e:
        print(f"Error al enviar: {e}")
        sys.exit(1)


if __name__ == "__main__":
    main()
