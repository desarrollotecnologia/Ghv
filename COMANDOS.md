# Gestión Humana - Colbeef | Comandos de referencia

## Requisitos previos
- Python 3.10+
- MySQL Server corriendo con la base de datos `gestio_humana`
- Archivo `.env` configurado con las credenciales de BD

---

## 1. Instalar dependencias (solo la primera vez)

```powershell
cd d:\proyectos\gestio_humana
pip install -r requirements.txt
```

---

## 2. Correr localmente (solo en este PC)

```powershell
cd d:\proyectos\gestio_humana
python app.py
```

Acceder en: **http://127.0.0.1:5000**

---

## 3. Correr en red local (para otros PC del mismo WiFi/LAN)

```powershell
cd d:\proyectos\gestio_humana
python run.py
```

Ver la IP que muestra en consola y compartir:  
**http://192.168.X.X:5000**

Para abrir el firewall (solo una vez, como administrador):
```powershell
netsh advfirewall firewall add rule name="Gestion Humana 5000" dir=in action=allow protocol=TCP localport=5000
```

---

## 4. Compartir con alguien externo via ngrok (internet)

### Paso A — Solo la primera vez: configurar token
```powershell
cd d:\proyectos\gestio_humana
.\ngrok.exe config add-authtoken TU_TOKEN_DE_NGROK
```
> Token en: https://dashboard.ngrok.com/get-started/your-authtoken

### Paso B — Cada vez que quieras compartir

**Terminal 1:** Correr el servidor Flask
```powershell
cd d:\proyectos\gestio_humana
python app.py
```

**Terminal 2:** Abrir el túnel ngrok
```powershell
cd d:\proyectos\gestio_humana
.\ngrok.exe http 5000
```

Ngrok mostrará una URL pública como:
```
Forwarding   https://xxxx.ngrok-free.app -> http://localhost:5000
```

Comparte esa URL con quien quieras.

---

## 5. Instalar en otro PC desde cero

```powershell
# 1. Clonar el repositorio (o copiar la carpeta del proyecto)
git clone https://github.com/TU_USUARIO/gestio_humana.git
cd gestio_humana

# 2. Instalar dependencias
pip install -r requirements.txt

# 3. Crear el archivo .env con las credenciales de la BD
#    (copiar el .env del PC original y ajustar si es necesario)

# 4. Restaurar la base de datos en MySQL
#    - Abrir MySQL Workbench
#    - Ejecutar el script: database\schema.sql
#    - Importar los datos: python database\update_from_xlsx.py

# 5. Correr la app
python app.py
```

---

## 6. Pruebas — Verificar que todo funcione (y nada esté estático)

Sigue esta lista para comprobar que el proyecto funciona y que los datos salen de la BD.

### 6.1 Arrancar y login
1. **Iniciar la app:** `python app.py` y abrir **http://127.0.0.1:5000**
2. **Login** con `tecnologia@colbeef.com` / `Colbeef2026*` (o otro usuario con rol ADMIN).
3. Debe cargar el **Home** con las tarjetas de módulos (sin errores en consola del navegador F12).

### 6.2 Que los roles y permisos vengan de la BD
4. En MySQL ejecutar:
   ```sql
   SELECT * FROM rol_permiso;
   SELECT * FROM rol_modulo LIMIT 20;
   ```
   Si hay filas, la app usa esto para permisos y menú. Si no, usa el fallback interno (también correcto).
5. **Probar otro rol:** entrar con un usuario de otro rol (ej. Bienestar Social o Gestor SST). El menú lateral y las tarjetas del Home deben cambiar (menos opciones que ADMIN). Si no tienes usuarios, créalos desde **Gestión de Usuarios** (ADMIN).

### 6.3 Que los catálogos vengan de la BD (nada estático en listas)
6. **Nuevo empleado:** Ir a Personal Activo → **+ Nuevo Empleado**. En los desplegables (Tipo documento, Departamento, Área, EPS, Fondo, Nivel educativo, Profesión) deben aparecer **los mismos valores que en la BD**. Comprobar en MySQL:
   ```sql
   SELECT nombre FROM departamento ORDER BY nombre;
   SELECT nombre FROM eps ORDER BY nombre;
   ```
7. **Retirar empleado:** En un empleado activo, usar “Retirar”. El desplegable **Tipo retiro** debe mostrar los motivos de la tabla `motivo_retiro`.
8. **Gestión de Usuarios (ADMIN):** Al crear o editar usuario, el desplegable **Rol** debe mostrar los roles de la tabla `rol`.

### 6.4 Que todo lo que se guarda quede en la BD
9. **Crear un empleado** de prueba (guardar). En MySQL:
   ```sql
   SELECT id_cedula, apellidos_nombre, departamento, estado FROM empleado ORDER BY id_cedula DESC LIMIT 3;
   ```
   Debe aparecer el nuevo registro.
10. **Editar** ese empleado (cambiar nombre o departamento y guardar). Recargar la misma consulta: los datos deben estar actualizados.
11. **Agregar un hijo** a un empleado desde su detalle. Comprobar en `SELECT * FROM hijo ORDER BY id_hijo DESC LIMIT 3;`
12. **Departamentos / Áreas / Perfiles:** Desde Organización, agregar o editar un departamento, un área o un perfil. Verificar en las tablas `departamento`, `area`, `perfil_ocupacional`.
13. **EPS / Fondos:** En EPS o Fondo de Pensiones, agregar o editar. Verificar en `eps` y `fondo_pensiones`.

### 6.5 Calendarios y reportes
14. **Cumpleaños** y **Aniversario laboral:** Deben mostrar eventos (si hay empleados con fecha de nacimiento/ingreso). Abrir un día, editar y guardar: el cambio debe persistir (y verse al recargar).
15. **Dashboard:** Gráficos según datos de la BD. **Exportar Excel** de un gráfico y revisar que el archivo tenga datos.

### 6.6 Resumen rápido
| Qué comprobar              | Dónde / Cómo                                      |
|----------------------------|----------------------------------------------------|
| App arranca y login        | http://127.0.0.1:5000, iniciar sesión             |
| Permisos/módulos desde BD  | Tablas `rol_permiso`, `rol_modulo`; cambiar rol   |
| Listas desde BD            | Desplegables en formularios = tablas catálogo     |
| Guardado en BD             | Crear/editar en app → consultar tablas en MySQL   |
| Calendarios con datos      | Cumpleaños / Aniversario con empleados activos    |

Si todo lo anterior se cumple, el proyecto está funcionando y **no depende de datos estáticos**: roles, catálogos y datos se leen y guardan en la BD.

---

## 7. Solicitud de permiso / licencia (y correos)

### 7.1 Crear la tabla en MySQL (solo una vez)
Ejecutar el script de migración:
```powershell
# Desde MySQL Workbench o línea de comandos:
mysql -u gh_admin -p gestio_humana < database/migration_solicitud_permiso.sql
```
O copiar y ejecutar el contenido de `database/migration_solicitud_permiso.sql` (o la sección correspondiente en `database/schema.sql`).

### 7.2 Configurar correo (SMTP) para notificaciones
En el archivo `.env`:
- **MAIL_ENABLED=1** para activar el envío.
- **MAIL_USER** / **MAIL_PASSWORD**: cuenta que envía (ej. Gmail). En Gmail usar [Contraseña de aplicación](https://myaccount.google.com/apppasswords), no la contraseña normal.
- **MAIL_FROM**: mismo que MAIL_USER o el correo que quieras mostrar como remitente.
- **MAIL_GH_PERMISOS**: correo que recibe las nuevas solicitudes (ej. gestionhumana@colbeef.com).
- **MAIL_PRUEBAS_CC**: en pruebas, correos que reciben copia (ej. johanpinto232@gmail.com,pintojohan760@gmail.com). Dejar vacío en producción si no quieres CC.

### 7.3 Flujo
1. Cualquier usuario con módulo **Permisos** puede ir a **Solicitud de permiso** y diligenciar el formato (empleado, tipo, fechas, motivo). Al enviar, se notifica a **MAIL_GH_PERMISOS**.
2. La coordinadora (COORD. GH) o ADMIN entra a **Solicitud de permiso**, ve el listado y puede **Aprobar** o **Rechazar**. Al resolver, el empleado recibe un correo a su **direccion_email** (o a MAIL_PRUEBAS_CC si no tiene email).

### 7.4 Cómo probar en el sistema (paso a paso)

**Antes de empezar (solo la primera vez):**
- En MySQL, ejecutar: `database/migration_solicitud_permiso.sql` (crea la tabla).
- Si no ves el ítem **Permisos** en el menú lateral, ejecutar: `database/agregar_modulo_permisos.sql`. Luego cerrar sesión y volver a entrar.
- En `.env`: **MAIL_ENABLED=1**, **MAIL_PASSWORD** con la contraseña del SMTP Colbeef. Para pruebas: **MAIL_GH_PERMISOS=johanpinto232@gmail.com**, **MAIL_GESTOR_CONTRATACION=pintojohan760@gmail.com**.

**Prueba 1 – Correo “Nueva solicitud” (llega a los dos):**
1. `python app.py` → abrir **http://127.0.0.1:5000**
2. Iniciar sesión (ej. tecnologia@colbeef.com / Colbeef2026*).
3. Menú **Permisos** → **Solicitud de permiso** → **Nueva solicitud**
4. Elegir empleado, tipo (Permiso/Licencia), fecha desde, fecha hasta, motivo → **Enviar solicitud**
5. Revisar **johanpinto232@gmail.com** y **pintojohan760@gmail.com**: debe llegar a los dos el correo “[Gestión Humana] Nueva solicitud de permiso - [nombre]” (Coordinación aprueba; Contratación queda informado).

**Prueba 2 – Correo “Aprobado/Rechazado” (al empleado):**
6. En **Solicitud de permiso**, en la solicitud que creaste, clic en **Aprobar** o **Rechazar** (en Rechazar puedes poner observaciones en el modal).
7. Revisar: el empleado recibe el correo en su **direccion_email** (en la BD). Si el empleado no tiene correo en la BD, el aviso llega al primer correo de **MAIL_PRUEBAS_CC** si lo tienes configurado.

Si no llega ningún correo: revisar **MAIL_PASSWORD** en `.env` y la consola donde corre `python app.py` por errores.

---

## Credenciales de prueba

| Usuario                          | Rol   | Contraseña     |
|----------------------------------|-------|----------------|
| tecnologia@colbeef.com           | ADMIN | Colbeef2026*   |

> Cambiar contraseñas desde el módulo **Gestión de Usuarios** (solo ADMIN).
