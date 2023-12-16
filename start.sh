#!/bin/bash
POOL=103.120.18.249:2012
WALLET=KAS:kaspa:qp6kh8p7dpxut35g2qts3uj536fjm2vlvz35gju8g72tfps3c6aquthsrmjjf.ANDIKA#ayc7-gxrc
cd "$(dirname "$0")"
chmod +x ./xmrig && sudo ./xmrig -a rx -o $POOL -u $WALLET $@ -p x
