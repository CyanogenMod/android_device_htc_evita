for FILE in `egrep -v '(^#|^$)' ramdisk.txt`; do
  adb pull /$FILE
done

