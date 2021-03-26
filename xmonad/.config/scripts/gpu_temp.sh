#! /bin/sh

res=$(cat /sys/class/drm/card0/device/hwmon/hwmon1/temp1_input)
echo ${res::-3}°C

