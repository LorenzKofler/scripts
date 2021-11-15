#!/usr/bin/env bash
sed -i 's/Xft.dpi: 96/Xft.dpi: 192/g' ~/.Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

sed -i 's/st -f "NotoSansMono-Medium:pixelsize=16"/st -f "NotoSansMono-Medium:pixelsize=30"/g' /usr/local/bin/scripts/stl

sed -i 's/font-0 = Roboto:size=14;1/font-0 = Roboto:size=24;1/g' ~/.config/polybar/config
sed -i 's/height = 30/height = 40/g' ~/.config/polybar/config

#xrandr --output eDP-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal --output DP-1 --mode 1920x1080 --pos 3840x0 --rotate normal --scale 2x2 --output HDMI-1 --off --output DP-2 --off
xrandr --output eDP-1 --primary --mode 3840x2160 --pos 3840x0 --rotate normal --output DP-1 --mode 1920x1080 --pos 0x0 --rotate normal --scale 2x2 --output HDMI-1 --off --output DP-2 --off

bspc wm -r
bspc monitor DP-1 -d 1 2 3 4 5
bspc monitor eDP-1 -d 6 7 8 9 10
start_polybar
next_background
