HTC Evita Device Tree
========================

Android device tree for HTC One XL (evita)

Thread on xda-developers here http://forum.xda-developers.com/showthread.php?t=1688448

Follow the steps in this document first
http://source.android.com/source/initializing.html

To get the source:

> repo init -u git://github.com/vmagro/android.git -b ics<br>
> repo sync -j4<br>

To build

> repo sync -j4<br>
> . build/envsetup.sh<br>
> lunch cm_evita-userdebug<br>
> make -j4<br>

To make a recovery flashable zip, run
> make otapackage
