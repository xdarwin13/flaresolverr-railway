FROM ghcr.io/flaresolverr/flaresolverr:latest

ENV LOG_LEVEL=error
ENV MAX_SESSIONS=1
ENV BROWSER_TIMEOUT=30000
ENV HEADLESS=true
ENV TZ=America/Bogota
ENV CHROME_ARGS="--no-sandbox,--disable-dev-shm-usage,--disable-gpu,--disable-extensions,--disable-background-networking,--disable-sync,--single-process,--memory-pressure-off"
