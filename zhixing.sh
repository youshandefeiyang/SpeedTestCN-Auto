#!/bin/bash

#文件路径，最新ip写入lastwanip.txt 
iptxt="/home/lastwanip.txt"
#获取WANIP
newwanip=`wget http://members.3322.org/dyndns/getip -q -O -`
#如接口获取不到ip，本次取消操作
echo $newwanip
if [ x"$newwanip" = "x" ]; then
  exit
fi
if [ -f $iptxt ]; then
  oldwanip=`cat $iptxt`
else
  oldwanip="0.0.0.0"
fi
#对比上次IP，如相同则退出，否则执行提速
echo $oldwanip
if [ "$newwanip" = "$oldwanip" ]; then
  exit
else 
  curl -s 'https://tisu-api.speedtest.cn/api/v2/speedup/reopen?source=www' | jq .data
fi
#缓存最新ip地址
echo $newwanip > $iptxt

