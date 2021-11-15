#!/usr/bin/env bash
#[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#if [[ "$1" != "-n" ]]; then
#    nohup "$0" -n &
#    exit $?
#fi

sed -Ei 's/Xft.dpi: [0-9]+/Xft.dpi: 192/g' ~/.Xresources
xrdb -merge ~/.Xresources
xrandr --output eDP-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off
bspc wm -r
bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8 9 0
start_polybar
next_background
