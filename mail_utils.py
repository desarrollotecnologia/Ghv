# -*- coding: utf-8 -*-
"""Envío de correos para notificaciones de solicitud de permiso."""
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from email.utils import formataddr


def send_mail(to_emails, subject, body_html, body_text=None, cc=None, app=None):
    """
    Envía un correo vía SMTP.
    to_emails: lista de correos o un solo string.
    cc: lista opcional de CC (para pruebas).
    app: instancia Flask (usa app.config). Si no se pasa, no envía.
    """
    if app is None:
        return False
    if not app.config.get("MAIL_ENABLED"):
        if app and hasattr(app, "logger"):
            app.logger.warning("[Permisos] SMTP no enviado: MAIL_ENABLED no está activo.")
        return False
    if not app.config.get("MAIL_USER"):
        if app and hasattr(app, "logger"):
            app.logger.warning("[Permisos] SMTP no enviado: MAIL_USER vacío.")
        return False
    if not app.config.get("MAIL_PASSWORD"):
        if app and hasattr(app, "logger"):
            app.logger.warning("[Permisos] SMTP no enviado: MAIL_PASSWORD vacío (configure .env para enviar correos).")
        return False
    to_list = [to_emails] if isinstance(to_emails, str) else list(to_emails)
    cc_list = cc or []
    if app.config.get("MAIL_PRUEBAS_CC"):
        cc_list = cc_list + [e.strip() for e in app.config["MAIL_PRUEBAS_CC"].split(",") if e.strip()]
    try:
        msg = MIMEMultipart("alternative")
        msg["Subject"] = subject
        msg["From"] = formataddr(("Gestión Humana Colbeef", app.config.get("MAIL_FROM") or app.config.get("MAIL_USER")))
        msg["To"] = ", ".join(to_list)
        if cc_list:
            msg["Cc"] = ", ".join(cc_list)
        msg.attach(MIMEText(body_text or body_html, "plain", "utf-8"))
        msg.attach(MIMEText(body_html, "html", "utf-8"))
        host = app.config.get("MAIL_HOST", "smtp.gmail.com")
        port = app.config.get("MAIL_PORT", 587)
        use_ssl = port == 465 or app.config.get("MAIL_USE_SSL", False)
        if use_ssl:
            with smtplib.SMTP_SSL(host, port) as s:
                s.login(app.config["MAIL_USER"], app.config["MAIL_PASSWORD"])
                s.sendmail(app.config.get("MAIL_FROM") or app.config["MAIL_USER"], to_list + cc_list, msg.as_string())
        else:
            with smtplib.SMTP(host, port) as s:
                s.starttls()
                s.login(app.config["MAIL_USER"], app.config["MAIL_PASSWORD"])
                s.sendmail(app.config.get("MAIL_FROM") or app.config["MAIL_USER"], to_list + cc_list, msg.as_string())
        if app and hasattr(app, "logger"):
            app.logger.info(f"[Permisos] Correo enviado a {to_list}: {subject[:50]}...")
        return True
    except Exception as e:
        if app and hasattr(app, "logger"):
            app.logger.warning(f"[Permisos] Error al enviar correo a {to_list}: {e}")
        return False


def notificar_nueva_solicitud_permiso(app, solicitud, empleado_nombre, empleado_email):
    """
    Notifica por separado:
    - coordinacion.gestionhumana@colbeef.com (MAIL_GH_PERMISOS): es quien APRUEBA o RECHAZA el permiso.
    - gestor.contratacion@colbeef.com (MAIL_GESTOR_CONTRATACION): es quien le indica al empleado que llene el formato; se le informa que ya lo diligenció.
    """
    detalle = f"""
    <ul>
        <li><strong>Empleado:</strong> {empleado_nombre}</li>
        <li><strong>Tipo:</strong> {solicitud.get('tipo', 'Permiso')}</li>
        <li><strong>Desde:</strong> {solicitud.get('fecha_desde')}</li>
        <li><strong>Hasta:</strong> {solicitud.get('fecha_hasta')}</li>
        <li><strong>Motivo:</strong> {solicitud.get('motivo') or '—'}</li>
    </ul>
    """
    ok = False

    # Correo a Coordinación GH: ellos aprueban o rechazan el permiso
    gh = (app.config.get("MAIL_GH_PERMISOS") or "").strip()
    if gh:
        subject_gh = f"[Gestión Humana] Nueva solicitud de permiso - {empleado_nombre} (aprobación suya)"
        body_gh = f"""
        <p>Se ha registrado una nueva solicitud de permiso/licencia.</p>
        {detalle}
        <p><strong>Usted (Coordinación Gestión Humana)</strong> es quien aprueba o rechaza el permiso. Entre al sistema para resolver la solicitud.</p>
        """
        plain_gh = body_gh.replace("<p>", "").replace("</p>", "\n").replace("<strong>", "").replace("</strong>", "").replace("<li>", "- ").replace("</li>", "\n").replace("<ul>", "").replace("</ul>", "")
        if send_mail(gh, subject_gh, body_gh, body_text=plain_gh, app=app):
            ok = True

    # Correo a Gestor de Contratación: él/ella le dice al empleado que llene el formato; se le informa que ya lo hizo
    gestor = (app.config.get("MAIL_GESTOR_CONTRATACION") or "").strip()
    if gestor:
        subject_gestor = f"[Gestión Humana] El empleado {empleado_nombre} diligenció el formato de permiso"
        body_gestor = f"""
        <p>Usted (Gestor de Contratación) es quien le indica al empleado que llene el formato de permiso/licencia.</p>
        <p>El empleado <strong>{empleado_nombre}</strong> ya diligenció el formato en el sistema. Detalle de la solicitud:</p>
        {detalle}
        <p>Coordinación Gestión Humana (<strong>coordinacion.gestionhumana@colbeef.com</strong>) es quien aprobará o rechazará esta solicitud.</p>
        """
        plain_gestor = body_gestor.replace("<p>", "").replace("</p>", "\n").replace("<strong>", "").replace("</strong>", "").replace("<li>", "- ").replace("</li>", "\n").replace("<ul>", "").replace("</ul>", "")
        if send_mail(gestor, subject_gestor, body_gestor, body_text=plain_gestor, app=app):
            ok = True

    if app and hasattr(app, "logger"):
        app.logger.info(f"[Permisos] Notificación nueva solicitud: GH={bool(gh)}, Gestor={bool(gestor)}, enviados_ok={ok}")
    return ok


def notificar_resolucion_permiso(app, solicitud, empleado_nombre, empleado_email, aprobado, observaciones=None):
    """Notifica al empleado que su solicitud fue aprobada o rechazada.
    El correo va al empleado (direccion_email en BD). Si está vacío, se usa el primer correo de MAIL_PRUEBAS_CC para pruebas."""
    original_email = (empleado_email or "").strip()
    if not original_email:
        empleado_email = app.config.get("MAIL_PRUEBAS_CC", "").split(",")[0].strip() or None
        if app and hasattr(app, "logger"):
            app.logger.info(f"[Permisos] Empleado {empleado_nombre} sin correo en BD; enviando a MAIL_PRUEBAS_CC={empleado_email or 'no configurado'}")
    else:
        empleado_email = original_email
    if not empleado_email:
        if app and hasattr(app, "logger"):
            app.logger.warning("[Permisos] No se envió correo de resolución: empleado sin direccion_email y MAIL_PRUEBAS_CC vacío")
        return False
    estado = "APROBADA" if aprobado else "RECHAZADA"
    subject = f"[Gestión Humana] Solicitud de permiso {estado} - {empleado_nombre}"
    body = f"""
    <p>Coordinación Gestión Humana ha resuelto su solicitud de permiso/licencia: <strong>{estado}</strong>.</p>
    <ul>
        <li><strong>Tipo:</strong> {solicitud.get('tipo', 'Permiso')}</li>
        <li><strong>Desde:</strong> {solicitud.get('fecha_desde')}</li>
        <li><strong>Hasta:</strong> {solicitud.get('fecha_hasta')}</li>
        {f'<li><strong>Observaciones:</strong> {observaciones or "—"}</li>' if observaciones else ""}
    </ul>
    <p>Cordialmente,<br/>Gestión Humana - Colbeef</p>
    """
    id_sol = solicitud.get("id")
    if app and hasattr(app, "logger"):
        app.logger.info(f"[Permisos] Resolución solicitud id={id_sol} → enviando a {empleado_email} ({estado})")
    ok = send_mail(empleado_email, subject, body, app=app)
    if app and hasattr(app, "logger"):
        app.logger.info(f"[Permisos] Resolución id={id_sol} → resultado_enviado={ok}")
    return ok
