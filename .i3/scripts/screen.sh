#!/bin/bash


killall polybar
xrandr | grep HDMI-3 | grep disconnected > /dev/null 2>&1
if [ $? == 0 ]; then
    xrandr --output DisplayPort-2 --mode 1920x1080 --pos 0x0 --primary --rotate normal --output HDMI-3 --off
    polybar --reload default &
else 
    xrandr --output DisplayPort-2 --mode 1920x1080 --pos 1920x0 --primary --rotate normal --output HDMI-3 --mode 1920x1080 --pos 0x0
    for m in $(xrandr | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload default &
    done
fi
