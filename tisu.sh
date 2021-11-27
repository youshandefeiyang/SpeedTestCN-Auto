#!/bin/bash
#检测开机时长是否大于等于5分钟，保证网络已通并正确获取好了WAN IP
pdsj=`cat /proc/uptime |cut -d. -f1`
dysj=300
if [ $pdsj -ge $dysj ];
then
   sh /home/zhixing.sh
else
   exit
fi
