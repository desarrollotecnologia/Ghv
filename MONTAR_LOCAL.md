# Montar Gestión Humana en local y compartir la URL

## Requisitos

- **Python 3.8+**
- **MySQL** en ejecución con la base de datos del proyecto
- Archivo **`.env`** configurado (copiar de `.env.example` si existe, o crear con `MYSQL_*`, `SECRET_KEY`, etc.)

## 1. Entorno virtual (recomendado)

```powershell
cd D:\proyectos\gestio_humana
python -m venv venv
.\venv\Scripts\Activate
pip install -r requirements.txt
```
(Si no existe `requirements.txt` en la carpeta: `pip install flask mysql-connector-python python-dotenv openpyxl`)

## 2. Arrancar el servidor

```powershell
python app.py
```

El servidor queda en **http://0.0.0.0:5000** (acepta conexiones de tu PC y de la red).

## 3. URLs para usar y compartir

| Uso | URL |
|-----|-----|
| **Solo tú (misma PC)** | http://127.0.0.1:5000 |
| **Compartir en la red (otros dispositivos)** | http://**TU_IP**:5000 |

### Cómo ver tu IP (Windows)

En PowerShell:

```powershell
ipconfig
```

Busca **Adaptador de LAN inalámbrica** o **Ethernet** y la línea **Dirección IPv4**. Ejemplo: `192.168.1.105` → la URL para compartir sería **http://192.168.1.105:5000**.

## 4. Firewall

Si otros no entran por la IP:

- Windows: permitir Python en “Firewall de Windows” para redes privadas, o abrir el puerto **5000** (TCP entrante).

## 5. Parar el servidor

En la terminal donde corre: **Ctrl+C**.

## 6. Usar la app en otro PC

Si copias el proyecto a otro equipo y al **aprobar o rechazar** una solicitud aparece *"Solicitud no encontrada o ya resuelta"*:

- **Causa habitual:** en ese PC el `.env` apunta a otra base de datos (o a una copia vacía). Los IDs de la lista pertenecen a la BD que cargó la página; si la BD es distinta, ese ID no existe o ya fue resuelto ahí.
- **Qué hacer:** usar la **misma base de datos** en todos los equipos. Por ejemplo:
  - En el `.env` del otro PC, poner el mismo `MYSQL_HOST`, `MYSQL_USER`, `MYSQL_PASSWORD`, `MYSQL_DATABASE` que en el PC donde sí funciona (por ejemplo, la IP del servidor MySQL).
  - O tener solo un servidor (un PC con la app + MySQL) y que el resto entre por la URL de red (http://IP:5000); así todos usan la misma BD.
