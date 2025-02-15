FROM itzg/minecraft-server

# Variables de entorno básicas
ENV EULA=true
ENV TYPE=PAPER
# Valor dummy para PLUGINS que será sobreescrito en el entrypoint
ENV PLUGINS=dummy

# Exponer puertos necesarios
EXPOSE 25565
EXPOSE 19132/udp

# Definir el volumen para persistencia de datos
VOLUME /data

# Copiar el script de entrypoint y otorgarle permisos de ejecución
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Usar nuestro entrypoint personalizado
ENTRYPOINT ["/entrypoint.sh"]
