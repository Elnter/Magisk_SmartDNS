#!/data/adb/magisk/busybox sh
set -o standalone

#
# mkdir Tmpfs cache
#

ENVPATH=/dev/var
MODDIR=${0%/*}

if [ ! -d "$ENVPATH" ];then
mkdir "$ENVPATH";
mkdir "$ENVPATH/run";
mkdir "$ENVPATH/log";
mkdir "$ENVPATH/cache";
mkdir "$ENVPATH/tmp";
fi;

chmod 0755 $MODDIR/system/bin/*