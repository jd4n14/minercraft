#!/bin/sh
# Establece la variable PLUGINS con saltos de línea reales usando printf
echo "starting server"

export PLUGINS="$(printf '%s\n%s' \
  'https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/spigot' \
  'https://download.geysermc.org/v2/projects/floodgate/versions/latest/builds/latest/downloads/spigot')"

# Ejecuta el comando por defecto (CMD) definido en la imagen base
exec "$@"
