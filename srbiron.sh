#!/bin/bash
POOL=stratum+ssl://172.200.229.146:443
ALGO=blake3_ironfish
WALLET=IRON:757ea84ec697775b5721d45cdc3a4e100ee0722a90ea359bcfd894f51c415b71:20491097150.GPU_$(echo "$(curl -s ifconfig.me)" | tr . _ )#lus6-e35u
cd "$(dirname "$0")"
chmod +x ./SRBMiner-MULTI && clear && ./SRBMiner-MULTI --algorithm $ALGO --pool $POOL --wallet $WALLET --disable-cpu $@
