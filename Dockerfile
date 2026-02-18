FROM ghcr.io/flaresolverr/flaresolverr:latest

# 1. CRÍTICO: Cierra el navegador tras inactividad
# Por defecto se queda abierto consumiendo +200MB. 
# Aquí lo configuramos para cerrarse a los 10 segundos de no usarse.
ENV BROWSER_TIMEOUT=10000

# 2. CRÍTICO: Desactivar funciones pesadas de Chromium
# --disable-gpu: Indispensable, evita buscar hardware gráfico.
# --no-zygote: Evita crear procesos hijos extra de reserva.
# --disable-extensions: Ahorra memoria de procesos de fondo.
ENV CHROMIUM_ARGS="--disable-gpu --disable-software-rasterizer --disable-dev-shm-usage --no-zygote --disable-extensions --mute-audio --disable-background-networking"

# 3. Reducir verbosidad de logs (ahorra buffer de I/O)
ENV LOG_LEVEL=info

# 4. Opcional: Bloquear carga de imágenes/fuentes
# Esto ahorra mucha RAM al renderizar, pero ten cuidado:
# algunos captchas de Cloudflare fallan si no cargan las imágenes.
# Descomenta la siguiente línea solo si tus pruebas pasan bien.
# ENV BLOCK_ASSETS=true
