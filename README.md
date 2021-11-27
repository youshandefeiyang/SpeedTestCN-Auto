# 使用方法（以OpenWrt系统为例）：
1.首先安装jq，具体在这里找，并点击安装即可：![avatar](https://cdn.jsdelivr.net/gh/youshandefeiyang/webcdn@v4.8/speedtestcn.png)

2.将两个脚本下载到/home目录下，并赋予可执行权限。

3.给tisu.sh添加定时任务:
```
crontab -e
*/1 * * * * sh /home/tisu.sh
```
