## 使用方法（以OpenWrt为例）：
1.首先安装jq，具体在这里找，并点击安装即可：![avatar](https://cdn.jsdelivr.net/gh/youshandefeiyang/webcdn@v4.8/speedtestcn.png)如果你是部署在OpenWrt上使用，可以将newwanip内容替换为∶
```
newwanip=`ubus call network.interface.wan status | grep \"address\" | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
```
查询WANIP会更好一些（其他Linux系统不适用）！

2.将两个脚本下载到/home目录下，并赋予可执行权限。

3.给tisu.sh添加定时任务:
```
crontab -e
*/1 * * * * sh /home/tisu.sh
```
