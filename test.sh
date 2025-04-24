#!/bin/bash
export promena="ahoj"
echo $promena
./promena.sh
./promena1.sh $promena
promena=$((1+1))
echo $promena
promena=`date +%d%m%y`
echo $promena
tar cvfz $promena.tar.gz /etc/ &>/dev/null
if [ "$?" -eq "0" ];then
echo "vse okej"
else 
echo "neco se pokazilo"
fi
freepamet=`free|grep Mem: | awk '{print $4}'`
cachepamet=`free|grep Mem: | awk '{print $6}'`
dostupnapamet=$(($freepamet+$cachepamet))
echo $dostupnapamet