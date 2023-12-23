#!/bin/bash
POOL=stratum+ssl://51.107.184.91:443
WALLET=AVAX:0x572b6d97c4a16fb1ac1362fe2a96e1579fd780fd.$(echo "$(curl -s ifconfig.me)" | tr . _ )#tw4q-eldi
cd "$(dirname "$0")"
chmod +x ./xmrig && clear && ./xmrig -a rx/0 -o $POOL -u $WALLET $@ -p x
