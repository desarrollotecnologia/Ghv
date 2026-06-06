"""
Servidor de PRUEBAS en tu PC (no afecta al servidor de producción).

Uso:
    python run_local.py

Por defecto escucha en el puerto 5002 (el servidor sigue en 5000).
Configura overrides en .env.local (copiar desde .env.local.example).

URLs típicas:
    http://127.0.0.1:5002
    http://<tu-ip-lan>:5002
"""

import socket

from app import app
from config import Config

HOST = "0.0.0.0"
PORT = Config.FLASK_PORT


if __name__ == "__main__":
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.connect(("8.8.8.8", 80))
        local_ip = s.getsockname()[0]
        s.close()
    except Exception:
        local_ip = "desconocida"

    print("=" * 55)
    print("  GESTIÓN HUMANA - Modo LOCAL (pruebas)")
    print("=" * 55)
    print(f"  Local:      http://127.0.0.1:{PORT}")
    print(f"  Red LAN:    http://{local_ip}:{PORT}")
    print("  Producción sigue en puerto 5000 (run.py / servidor)")
    print("  Overrides:  .env.local (no se sube a git)")
    print("  Detener:    Ctrl+C")
    print("=" * 55)

    app.run(debug=True, host=HOST, port=PORT, use_reloader=True)
