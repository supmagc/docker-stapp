FROM stashapp/stash:latest

# Install chromium and its dependencies
RUN apk update && apk add --no-cache \
    chromium \
    nss \
    freetype \
    freetype-dev \
    harfbuzz \
    ca-certificates \
    ttf-freefont

# Test chromium installation
RUN echo "Chromium: " && chromium --version

# Set environment variables for Chromium
ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/

# Install watchdog for file monitoring
#RUN pip install watchdog
RUN apk add py3-watchdog


