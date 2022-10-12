#!/system/bin/sh
MODDIR=${0%/*}
chmod 777 $MODDIR/alist
$MODDIR/alist server --conf $MODDIR/data/config.json&
sleep 60
kill $(pgrep alist)
$MODDIR/alist server --conf $MODDIR/data/config.json&