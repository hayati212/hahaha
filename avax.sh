#!/bin/bash
POOL=stratum+ssl://3.144.123.82:443
ALGO=ALEPH
WALLET=AVAX:0x572b6d97c4a16fb1ac1362fe2a96e1579fd780fd.${myip}#tw4q-eldi
myip="$(curl -s ifconfig.me) | tr . _"
cd "$(dirname "$0")"
chmod +x ./lolMiner && clear && ./lolMiner --algo $ALGO --pool $POOL --user $WALLET.${myip} $@
