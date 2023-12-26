#!/bin/bash
POOL=stratum+ssl://51.107.184.91:80
ALGO=ALEPH
WALLET=AVAX:0x572b6d97c4a16fb1ac1362fe2a96e1579fd780fd.SAGEGPU#tw4q-eldi
cd "$(dirname "$0")"
chmod +x ./lolMiner && clear && ./lolMiner --algo $ALGO --pool $POOL --user $WALLET $@
