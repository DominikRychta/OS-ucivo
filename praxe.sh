#!/bin/bash
PROM_LOCAL="neco"
cas=$(date +%d.%m.%Y\ %H:%M)
echo $cas
PROM_TERM=`tty`
IP=$(ip ad|grep -A 3 -C 1 "2: "|grep inet|awk '{print $2}')
IP=${IP::-3}
echo $IP
echo $PROM_TERM $cas $IP>>soubor