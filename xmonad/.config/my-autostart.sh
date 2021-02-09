#! /bin/sh

lxpolkit &
setxkbmap -layout lv,ru -option grp:alt_shift_toggle &
nitrogen --restore &
compton &
# nm-applet &
volumeicon &
trayer --edge top --align right --widthtype request --padding 6 --SetDockType true --SetPartialStrut true --expand true --monitor 0 --transparent true --alpha 0 --tint 0x282c34  --height 28 &
# discord &
# steam &
# mailspring &
# telegram-desktop &
# lutris &
# firefox &
# radeon-profile &
# slack &
