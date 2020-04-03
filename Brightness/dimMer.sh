#!/bin/bash
# Control monitor brightness
brightness_lvl=0.7
screen=$(xrandr | grep " connected" | cut -f1 -d" ")
xrandr --output $screen --brightness $brightness_lvl;