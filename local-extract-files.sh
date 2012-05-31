#!/bin/sh
#
# Description: Use this script as an alternative to extract_files.sh.
#
# Set the SRC path to a HTC Ville ROM directory
# This script will try to copy all files from the prebuilt folder 
# or otherwise a source htc ville rom

# Override shipped libraries
PREBUILT=prebuilt
# Location of the source rom
SRC=/extra/android/device/ville/RUU/latest
# Destination directory
BASE=../../../vendor/htc/ville/proprietary

rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
  DIR=`dirname $FILE`
  if [ ! -d $BASE/$DIR ]; then
    mkdir -p $BASE/$DIR
  fi
  if [ -e $PREBUILT/system/$FILE ]
  then
    echo PREBUILT $FILE
    cp $PREBUILT/system/$FILE $BASE/$FILE
  else
    if [ -e $SRC/system/$FILE ]
    then
      echo $FILE
      cp $SRC/system/$FILE $BASE/$FILE
    else
      echo ERROR $FILE
    fi
  fi
done

./setup-makefiles.sh
