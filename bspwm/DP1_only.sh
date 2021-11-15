#!/usr/bin/env bash

sed -i 's/Xft.dpi: 192/Xft.dpi: 96/g' ~/.Xresources
sed -i 's/rofi.dpi: 192/rofi.dpi: 96/g' ~/.Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#ed -i 's/st -f "NotoSansMono-Medium:pixelsize=30"/st -f "NotoSansMono-Medium:pixelsize=30"/g' /usr/local/bin/scripts/stl
#
#sed -i 's/font-0 = Roboto:size=14;1/font-0 = Roboto:size=24;1/g' ~/.config/polybar/config
#sed -i 's/height = 30/height = 40/g' ~/.config/polybar/config

xrandr --output DP-1 --primary --mode 1920x1080 --scale 1x1 --pos 0x0 --rotate normal --output eDP-1 --off --output HDMI-1 --off --output DP-2 --off

bspc wm -r
bspc monitor DP-1 -d 1 2 3 4 5 6 7 8 9 0
start_polybar
next_background &
