# Cómo probar el flujo de Solicitud de permiso

## 1. Antes de empezar

- **Correo:** En `.env` tienes `MAIL_GH_PERMISOS=johanpinto232@gmail.com` y `MAIL_GESTOR_CONTRATACION=pintojohan760@gmail.com` para no molestar a los correos reales. Para que se envíen los correos, **MAIL_PASSWORD** debe tener la contraseña del SMTP (no-responder-sirt@colbeef.com.co).
- **Menú Permisos:** Si no ves "Permisos" en el menú, ejecuta `database/mostrar_permisos_definitivo.sql` en MySQL y vuelve a iniciar sesión.

## 2. Probar “Nueva solicitud” (dos correos)

1. Arranca la app: `python app.py` (o tu comando habitual).
2. Entra con un usuario que tenga el módulo Permisos (ej. Gestor de Contratación o el que uses).
3. Menú **Permisos** → **Solicitud de permiso**.
4. Elige un empleado activo, tipo (Permiso/Licencia), fechas y motivo. **Enviar solicitud**.
5. Revisa los dos correos:
   - **johanpinto232@gmail.com** (simula Coordinación GH): debe decir que **usted aprueba o rechaza** y que entre al sistema.
   - **pintojohan760@gmail.com** (simula Gestor de Contratación): debe decir que **usted le indicó al empleado que llenara el formato** y que el empleado ya lo diligenció.

## 3. Probar “Aprobar / Rechazar” (correo al empleado)

1. Entra con un usuario que pueda aprobar (ADMIN o COORD. GH), por ejemplo **coordinacion.gestionhumana@colbeef.com** si está en la BD, o el usuario ADMIN.
2. Menú **Permisos** → verás la lista de solicitudes pendientes.
3. En una solicitud pendiente, pulsa **Aprobar** (opcional: observaciones) o **Rechazar**.
4. El empleado recibe un correo en su **direccion_email** (campo en la tabla `empleado`). Si ese campo está vacío, la app puede usar el primer correo de MAIL_PRUEBAS_CC. Revisa que el correo diga que **Coordinación Gestión Humana** ha resuelto la solicitud (Aprobada/Rechazada).

## 4. Cómo validar que llegó el permiso en Coordinación y el correo

**A) En la aplicación:** Cierra sesión, entra con Coordinación GH o ADMIN. Menú **Permisos** → debe aparecer la solicitud en la lista (estado Pendiente). Si la ves, el permiso llegó a Coordinación.

**B) Correos:** Revisa la bandeja (y spam) de los correos configurados en MAIL_GH_PERMISOS y MAIL_GESTOR_CONTRATACION. En la consola donde corre `python app.py` verás líneas `[Permisos] Correo enviado...` o `[Permisos] Error al enviar...` según si el envío funcionó.

**C) Mensaje al guardar:** Si ves "Se envió correo a Coordinación GH y a Gestor de Contratación" los correos se enviaron. Si ves "Revisar configuración de correo...", la solicitud se guardó pero el envío falló.

## 5. ¿Por qué no veo el correo cuando apruebo o rechazo?

El correo de **Aprobada** o **Rechazada** **no le llega a la coordinadora**: se envía al **empleado** que pidió el permiso (el de la tarjeta que aprobó), a su **correo en la base de datos** (`direccion_email` en la tabla `empleado`).

**Cómo validar:**

1. **Revisar que el correo se intente enviar**  
   En la consola donde corre `python app.py`, al aprobar/rechazar debe salir:
   - `[Permisos] Correo enviado a ['correo@...']: [Gestión Humana] Solicitud...`  
   Si sale `[Permisos] Error al enviar correo` o no sale nada, el envío falló o está desactivado.

2. **Revisar MAIL_PASSWORD**  
   Si en `.env` **MAIL_PASSWORD** está vacío, **no se envía ningún correo**. Ponga la contraseña del SMTP (no-responder-sirt@colbeef.com.co) para que los correos salgan.

3. **¿Dónde ver el correo de aprobación/rechazo?**  
   - Opción A: En la BD, asigne un correo al empleado. En MySQL:  
     `UPDATE empleado SET direccion_email = 'su_correo@ejemplo.com' WHERE id_cedula = '729244410021987';`  
     (use la cédula del empleado de la solicitud). Ese correo recibirá el mensaje "Solicitud APROBADA/RECHAZADA".
   - Opción B: Si el empleado no tiene `direccion_email`, la app envía al primer correo de **MAIL_PRUEBAS_CC**. En `.env` ponga por ejemplo `MAIL_PRUEBAS_CC=johanpinto232@gmail.com` y deje vacío el correo del empleado; así recibirá en johanpinto232 el correo de resolución.

4. **Resumen:** La coordinadora no recibe el correo de "Aprobada/Rechazada"; lo recibe el empleado (o el correo de prueba si configuró MAIL_PRUEBAS_CC y el empleado no tiene email).

## 6. Validar el envío sin depender del buzón (consola + BD)

- **Consola:** Al aprobar o rechazar, en la terminal donde corre `python app.py` verás:
  - `[Permisos] Resolución solicitud id=X → enviando a correo@... (APROBADA/RECHAZADA)`
  - `[Permisos] Resolución id=X → resultado_enviado=True` o `resultado_enviado=False`
  - Si no se envía: `[Permisos] SMTP no enviado: MAIL_PASSWORD vacío (...)` u otro motivo.
- **Pantalla:** Si el correo no se pudo enviar, el mensaje flash será: "Solicitud aprobada/rechazada. No se pudo enviar el correo al empleado (revisar consola y MAIL_PASSWORD en .env)."
- **Base de datos:** Ejecuta la migración `database/migration_correo_resolucion_validar.sql` (añade `correo_resolucion_enviado` y `correo_resolucion_at`). Después de aprobar/rechazar puedes validar con:
  ```sql
  SELECT id, estado, correo_resolucion_enviado, correo_resolucion_at FROM solicitud_permiso ORDER BY id DESC LIMIT 5;
  ```
  - `correo_resolucion_enviado = 1` y `correo_resolucion_at` con fecha → el envío se intentó y se registró como OK.
  - `correo_resolucion_enviado = 0` → el envío falló (revisar consola para el motivo).

## 7. Resumen

| Paso | Quién | Dónde | Qué revisar |
|------|--------|--------|-------------|
| 1 | Cualquiera con Permisos | Permisos → Solicitud de permiso | Formulario y mensaje de éxito |
| 2 | — | johanpinto232 / pintojohan760 | Dos correos distintos (GH aprueba; Contratación informado) |
| 3 | ADMIN o COORD. GH | Permisos → lista → Aprobar/Rechazar | Lista y botones |
| 4 | — | Correo del empleado | “Coordinación GH ha resuelto: APROBADA/RECHAZADA” |

Cuando termines de probar, en `.env` puedes volver a los correos reales:
- `MAIL_GH_PERMISOS=coordinacion.gestionhumana@colbeef.com`
- `MAIL_GESTOR_CONTRATACION=gestor.contratacion@colbeef.com`
