for FILE in `egrep -v '(^#|^$)' modules.txt`; do
  adb pull /system/lib/modules/$FILE
done

