#!/bin/bash
WP_FILE=$HOME/.config/wallpaper.jpg
wget -q -O "$WP_FILE" https://source.unsplash.com/$(xdpyinfo | awk '/dimensions/{print $2}')/?city,night,space
if [[ -f "${WP_FILE}" ]]; then
        nitrogen --set-scaled ${WP_FILE}
fi
