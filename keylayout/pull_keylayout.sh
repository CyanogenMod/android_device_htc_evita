for FILE in `egrep -v '(^#|^$)' keylayouts.txt`; do
  adb pull /system/usr/keylayout/$FILE
done
