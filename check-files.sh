#!/bin/sh
#
# check-files.sh
# check vendor proprietary files
#
# Author: Alex.wang
# Create: 

VENDOR=xiaomi
DEVICE=mione_plus
BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
	if [ ! -e $BASE/$FILE ]; then
		echo $BASE/$FILE: not exist
	fi
done

