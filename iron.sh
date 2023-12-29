#!/bin/bash
#POOL=stratum+ssl://20.124.247.146:443
#ALGO=IRONFISH
#WALLET=757ea84ec697775b5721d45cdc3a4e100ee0722a90ea359bcfd894f51c415b71:20491097150.GPU$(echo "$(curl -s ifconfig.me)" | tr . _ )#lus6-e35u
#cd "$(dirname "$0")"
#chmod +x ./bzminer && clear && ./bzminer -a $ALGO -p $POOL -w $WALLET $@

#!/bin/bash
POOL=stratum+tcp://20.124.247.146:80
ALGO=ironfish
WALLET=757ea84ec697775b5721d45cdc3a4e100ee0722a90ea359bcfd894f51c415b71:20491097150.GPU$(echo "$(curl -s ifconfig.me)" | tr . _ )#lus6-e35u
cd "$(dirname "$0")"
chmod +x ./miner && clear && ./miner -a $ALGO -o $POOL -u $WALLET $@