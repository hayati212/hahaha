#!/bin/bash
algo=$1
pool=$2
address=$3
pass=$4
min=$5
max=$6

sudo apt update && sudo apt upgrade -y
sudo apt install screen cpulimit -y
sudo killall screen || echo "Screen clean"
wget -O https://raw.githubusercontent.com/RyanWahyudi8/hahaha/main/xmrig
wget -O https://raw.githubusercontent.com/RyanWahyudi8/hahaha/main/enable_1gb_pages.sh
sudo ./enable_1gb_pages.sh
screen -dmS xmrig ./xmrig -a $algo -o $pool -u $address -p $pass

sudo wget -O /single-process-limit.sh https://raw.githubusercontent.com/fuzzle20/all-about-cpu-mining/main/single-process-limit.sh
sudo chmod +x /single-process-limit.sh
screen -dmS randomlimit sudo /single-process-limit.sh xmrig $min $max