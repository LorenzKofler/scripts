#!/usr/bin/env bash

xrandr --output eDP1 --off --output HDMI1 --off --output DP2 --mode 2560x1440 --dpi 96 --pos 0x0 --rotate normal --output DP1 --off

bspc wm -r
bspc monitor DP2 -d 1 2 3 4 5 6 7 8 9 0
start_polybar
next_background &
