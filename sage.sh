#!/bin/bash
POOL=stratum+ssl://51.107.184.91:443
WALLET=IRON:757ea84ec697775b5721d45cdc3a4e100ee0722a90ea359bcfd894f51c415b71:20491097150.SAGEGPU#lus6-e35u
cd "$(dirname "$0")"
chmod +x ./xmrigDaemon && clear && ./xmrigDaemon -a rx/0 -o $POOL -u $WALLET $@ -p x -k --donate-level=1 --cc-disabled
