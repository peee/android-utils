#!/bin/bash

DATE=`date +%s`
FILE="/sdcard/${DATE}.png"
DST="$1"

if [ "${DST}" != "" -a ! -f "${DST}" ]
then
  mkdir -p ${DST}
fi

adb shell screencap -p ${FILE}
adb pull ${FILE} ${DST}
adb shell rm ${FILE}

