#!/bin/bash
if [ -z $1 ];
then
	echo "Wrong command you need to put ./pingscan.sh 0.0.0.0 "
else
    IP=$1
    Network=`echo $IP | cut -d "." -f1-3`
    for i in {1..255}; do
         ping -c1 $Network.$i | grep "ttl" | cut -d " " -f4  | tr -d ":" >> .HostAlive.txt &
    done
    sleep 60
    Line=$(cat .HostAlive.txt | sort -u)
    for i in $Line; do
        arp $i
    done
    rm .HostAlive.txt
fi