#!/bin/bash
#
### Script to control the monitor brightness 
### this file goes into /etc/profile.d/ to be used at startup
 
# set the preferred brightness level here! (value must be between 0 and 1)
bright_lvl=0.7

# get the screen
screen=$(xrandr | grep " connected" | cut -f1 -d" ")

# adjust brightness
xrandr --output $screen --brightness $bright_lvl;
