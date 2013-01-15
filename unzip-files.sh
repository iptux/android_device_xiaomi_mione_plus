#/bin/sh

UPDATE_PACKAGE=$1

if [ "x$UPDATE_PACKAGE" = "x" ]; then
    echo You must specify the update.zip as first argument
    exit
fi

VENDOR=xiaomi
DEVICE=mione_plus
BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
  DIR=`dirname $FILE`
  if [ ! -d $BASE/$DIR ]; then
    mkdir -p $BASE/$DIR
  fi
  unzip -j -o ${UPDATE_PACKAGE} system/$FILE -d $BASE/$DIR
done

