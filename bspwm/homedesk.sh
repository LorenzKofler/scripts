#!/usr/bin/env bash


xrandr --output eDP-1 --off --output HDMI-1 --off --output DP-2 --mode 2560x1440 --dpi 120 --pos 0x0 --rotate normal --output DP-1 --mode 1920x1080 --scale 1x1 --pos 2560x0 --rotate normal 

sed -Ei 's/Xft.dpi: [0-9]+/Xft.dpi: 120/g' ~/.Xresources
xrdb -merge ~/.Xresources
bspc wm -r
bspc monitor DP-1 -d 6 7 8 9 0
bspc monitor DP-2 -d 1 2 3 4 5
start_polybar 2>&1 /dev/null &
next_background

