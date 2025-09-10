FROM alpine:latest

# Instala unbound e curl para pegar AdGuard
RUN apk add --no-cache unbound curl bash

# Baixa e instala AdGuard Home
RUN curl -sL https://github.com/AdguardTeam/AdGuardHome/releases/latest/download/AdGuardHome_linux_amd64.tar.gz | tar xz -C /opt/

WORKDIR /opt/AdGuardHome

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
