FROM adguard/adguardhome:latest

# Instala o Unbound
RUN apt update && apt install -y unbound

# Copia o script de entrada
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Define o entrypoint
ENTRYPOINT ["/entrypoint.sh"]
