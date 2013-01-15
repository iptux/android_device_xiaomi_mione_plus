#!/bin/sh
#
# push-files.sh
# push vender proprietary files to device
#
# Author: Alex.wang
# Create: 2013-01-15 19:48

VENDOR=xiaomi
DEVICE=mione_plus
BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

adb remount

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
	if [ ! -e $BASE/$FILE ]; then
		echo $BASE/$FILE: not exist
	else
		adb push $BASE/$FILE /system/$FILE
	fi
done

# fix file permition in /system/bin
adb shell find /system/bin/ -perm 644 -exec chown root:shell '{}' "\;"
adb shell find /system/bin/ -perm 644 -exec chmod 755 '{}' "\;"

