#!/bin/sh

BASE=../../../vendor/deovo/kai/proprietary
rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
  DIR=`dirname $FILE`
  if [ ! -d $BASE/$DIR ]; then
    mkdir -p $BASE/$DIR
  fi
  /home/ycrad/android-sdk-linux/platform-tools/adb pull /system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
