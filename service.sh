#!/system/bin/sh
#该文件在/data/adb/modules/Alist
MODDIR=${0%/*}
#程序赋权，过后可删
chmod 777 $MODDIR/alist
#一分钟后启动，避免无网络导致失败
#启动命令
$MODDIR/alist server --data $MODDIR/data&
