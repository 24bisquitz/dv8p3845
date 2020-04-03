#!/bin/sh
# 
#rotate screen and touchscreen to portrait mode

#xrandr -o right
#xinput set-prop "ELAN1001:00 04F3:202C" --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1

xrandr -o normal
xinput set-prop "ELAN1001:00 04F3:202C" --type=float "Coordinate Transformation Matrix" 0 0 0 0 0 0 0 0 0