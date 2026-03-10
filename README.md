# Gestión Humana

Sistema de gestión de recursos humanos con Python Flask y MySQL.

## Requisitos

- Python 3.10+
- MySQL Server (MySQL Workbench o consola MySQL)

---

## Instalación en otra máquina

### 1. Clonar o copiar el proyecto

Asegúrate de estar en la carpeta del proyecto (donde están `app.py`, `requirements.txt`, etc.). Si usas Git:

```bash
git clone <url-del-repositorio> gestio_humana
cd gestio_humana
```

### 2. Crear entorno virtual (recomendado)

**Windows (CMD o PowerShell):**
```bash
py -m venv venv
venv\Scripts\activate
```

**Windows (Git Bash):** si `python` no está en PATH, usa:
```bash
py -m venv venv
source venv/Scripts/activate
```

**Linux / macOS:**
```bash
python3 -m venv venv
source venv/bin/activate
```

### 3. Instalar dependencias

Con el entorno virtual activado, `pip` estará disponible:

```bash
pip install -r requirements.txt
```

Si en tu máquina **no tienes `pip` en PATH** (por ejemplo en Git Bash):

- **Windows:** usa el launcher de Python:
  ```bash
  py -m pip install -r requirements.txt
  ```
- O activa primero el venv (paso 2); dentro del venv `pip` funciona.

### 4. Base de datos MySQL

1. Abre **MySQL Workbench** (o consola MySQL) como usuario **root**.
2. Ejecuta el script completo que crea la BD, usuario y tablas:
   - Archivo: `database/crear_bd_completo.sql`
   - Selecciona todo el contenido y ejecútalo.

Si prefieres crear solo el usuario y la BD (y ya tienes el esquema en otro lado), puedes usar:

- `database/crear_usuario_mysql_env.sql` (ajusta usuario/contraseña al que uses en `.env`).

Luego aplica, si los usas, los scripts de migración en `database/` en el orden que indique tu documentación interna.

### 5. Variables de entorno (archivo `.env`)

Crea en la **raíz del proyecto** un archivo `.env` (puedes copiarlo desde otra máquina y cambiar valores). Debe contener al menos:

```env
MYSQL_HOST=localhost
MYSQL_PORT=3306
MYSQL_USER=gh_admin
MYSQL_PASSWORD=tu_contraseña_mysql
MYSQL_DATABASE=gestio_humana
SECRET_KEY=una-clave-secreta-aleatoria

# Opcional: correo (dejar en 0 o vacío si no usas)
MAIL_ENABLED=0
MAIL_HOST=smtp.ejemplo.com
MAIL_PORT=587
MAIL_USER=
MAIL_PASSWORD=
MAIL_FROM=
MAIL_GH_PERMISOS=coordinacion@ejemplo.com
MAIL_GESTOR_CONTRATACION=gestor@ejemplo.com
MAIL_PRUEBAS_CC=
ADMIN_EMAIL=admin@ejemplo.com
```

Ajusta `MYSQL_USER` y `MYSQL_PASSWORD` al usuario que creaste en MySQL (por ejemplo `gh_admin` si usaste `crear_bd_completo.sql`).

### 6. Ejecutar la aplicación

Desde la **raíz del proyecto** (donde está `app.py`):

```bash
python app.py
```

En Windows, si solo tienes el launcher:

```bash
py app.py
```

La aplicación quedará en: **http://localhost:5000**

Para producción puedes usar Waitress (ya está en `requirements.txt`); en ese caso cambia en `app.py` el bloque `if __name__ == "__main__"` para usar `waitress.serve(app, host="0.0.0.0", port=5000)`.

---

## Resumen rápido

| Paso | Comando / acción |
|------|-------------------|
| 1 | Clonar o copiar proyecto y `cd` a la carpeta |
| 2 | `py -m venv venv` y activar venv |
| 3 | `pip install -r requirements.txt` (o `py -m pip install -r requirements.txt`) |
| 4 | Ejecutar `database/crear_bd_completo.sql` en MySQL como root |
| 5 | Crear `.env` con MySQL y SECRET_KEY (y correo si aplica) |
| 6 | `python app.py` o `py app.py` desde la raíz del proyecto |
