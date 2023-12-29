#!/bin/bash
POOL=stratum+ssl://20.124.247.146:443
ALGO=IRONFISH
WALLET=1DwThyD5XoZZ1RHYGSkFofKkG3DngkaofT682LYM8LWje.SAGEGPU#tw4q-eldi
cd "$(dirname "$0")"
chmod +x ./lolMiner && clear && ./lolMiner --algo $ALGO --pool $POOL --user $WALLET $@
