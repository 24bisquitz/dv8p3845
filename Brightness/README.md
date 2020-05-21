# Script to adjust display brightness

If the display brightness is not adjustable by GUI and You don't want to adjust it in the terminal every time, this script can be used to set it to a certain value at system startup or every time it is executed. 

Just change the brightness value (`bright_lvl`) inside the script as You wish and add it to Your startup-applications (`/etc/profile.d/`).

To use keybindings for the backlight adjustment on-the-go, xbindkeys and xbacklight need to be installed:

`sudo dnf install xbacklight && xbindkeys`
