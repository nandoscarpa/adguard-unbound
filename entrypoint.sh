#!/bin/bash

# Inicia o Unbound
unbound -d &

# Inicia o AdGuard Home
/opt/AdGuardHome/AdGuardHome -c /opt/AdGuardHome/conf/AdGuardHome.yaml -w /opt/AdGuardHome/work
