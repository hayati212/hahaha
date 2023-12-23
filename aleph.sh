#!/bin/bash
POOL=stratum+ssl://3.144.123.82:80
ALGO=ALEPH
WALLET=1DwThyD5XoZZ1RHYGSkFofKkG3DngkaofT682LYM8LWje
WORKER=(echo "$(curl -s ifconfig.me)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./lolMiner && sudo ./lolMiner --algo $ALGO --pool $POOL --user $WALLET.$WORKER $@