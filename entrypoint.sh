#!/bin/bash

# Inicia o Unbound em background
unbound -d &

# Inicia o AdGuard Home (usa o arquivo de config padrão)
./AdGuardHome -c AdGuardHome.yaml -w work
