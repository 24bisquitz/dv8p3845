#!/bin/sh
# 
# rotate display to PORTRAIT mode
xrandr -o normal
# rotate touchscreen to portrait mode
xinput set-prop "ELAN1001:00 04F3:202C" --type=float "Coordinate Transformation Matrix" 0 0 0 0 0 0 0 0 0
