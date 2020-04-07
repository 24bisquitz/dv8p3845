#!/bin/bash
# 
# rotate display to LANDSCAPE mode
xrandr -o right
# rotate touchscreen to LANDSCAPE mode
xinput set-prop "ELAN1001:00 04F3:202C" --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
