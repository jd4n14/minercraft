#!/bin/sh
# Establece la variable PLUGINS con saltos de línea reales usando printf
export PLUGINS="$(printf '%s\n%s' \
  'https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/spigot' \
  'https://download.geysermc.org/v2/projects/floodgate/versions/latest/builds/latest/downloads/spigot')"

# Llama al script original de inicio del servidor
exec /start-minecraft.sh
