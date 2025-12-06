#!/bin/sh
set -e

echo "Starting Minecraft server with Geyser + Floodgate..."

# La variable PLUGINS con saltos de línea reales
export PLUGINS="$(printf '%s\n%s\n' \
  'https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/spigot' \
  'https://download.geysermc.org/v2/projects/floodgate/versions/latest/builds/latest/downloads/spigot'
)"

# Llamar al entrypoint original de itzg/minecraft-server
exec /start
