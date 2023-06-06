#!bin/bash

a=10
b=saswat
c="Misra"
topic=shellscripting

echo $a
echo $b
echo $c
echo $topic

TODAY_DATE=$(date +%F)
echo ${TODAY_DATE}

X=$(uptime)
echo $X

USER=$(who | grep centos | wc -l)
echo $USER