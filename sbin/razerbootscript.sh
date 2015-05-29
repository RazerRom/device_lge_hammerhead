#!/system/bin/sh

# rename mpdecision, thermal-engine, and power.msm8974 due to built in kernel features.
mount -o rw,remount /system;
[ -f /system/bin/mpdecision_bck ] || mv /system/bin/mpdecision /system/bin/mpdecision_bck
[ -f /system/bin/thermal-engine-hh_bck ] || mv /system/bin/thermal-engine-hh /system/bin/thermal-engine-hh_bck
[ -f /system/vendor/lib/hw/power.msm8974.so_bck ] || mv /system/vendor/lib/hw/power.msm8974.so /system/vendor/lib/hw/power.msm8974.so_bck
mount -o ro,remount /system;

