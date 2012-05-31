for FILE in `egrep -v '(^#|^$)' configs.txt`; do
  adb pull /system/$FILE
done
