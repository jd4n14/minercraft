FROM itzg/minecraft-server

# Variables de entorno base
ENV EULA=true
ENV TYPE=PAPER
# Valor dummy para PLUGINS, que se reemplazará en el entrypoint
ENV PLUGINS=dummy

# Exponer los puertos necesarios
EXPOSE 25565
EXPOSE 19132/udp

# Definir el directorio de datos como volumen
VOLUME /data

# Copiar el script de entrypoint al contenedor y darle permisos de ejecución
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Usar el entrypoint personalizado
ENTRYPOINT ["/entrypoint.sh"]
