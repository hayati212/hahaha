#!/bin/bash
POOL=stratum+ssl://20.124.247.146:443
ALGO=ALEPH
WALLET=1DwThyD5XoZZ1RHYGSkFofKkG3DngkaofT682LYM8LWje.SAGEGPU
cd "$(dirname "$0")"
chmod +x ./lolMiner && clear && ./lolMiner --algo $ALGO --pool $POOL --user $WALLET $@
