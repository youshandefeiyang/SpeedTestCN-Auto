#!/bin/bash
pdsj=`cat /proc/uptime |cut -d. -f1`
dysj=300
if [ $pdsj -ge $dysj ];
then
   sh /home/zhixing.sh
else
   exit
fi
