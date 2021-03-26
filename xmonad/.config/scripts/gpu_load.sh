#! /bin/sh

load=$(cat /sys/class/drm/card0/device/gpu_busy_percent)
echo $load%

