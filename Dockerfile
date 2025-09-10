FROM alpine:latest

# Instala unbound, curl e bash
RUN apk add --no-cache unbound curl bash

# Baixa e instala a última versão do AdGuard Home oficial
RUN curl -sL https://github.com/AdguardTeam/AdGuardHome/releases/latest/download/AdGuardHome_linux_amd64.tar.gz | tar xz -C /opt/

WORKDIR /opt/AdGuardHome

# Copia o script de entrada
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
