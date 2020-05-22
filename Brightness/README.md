# Automatic Brightness Adjustment
Download the driver for the Ambient Light Sensor (https://github.com/hadess/cm3218) and install it:

Make sure `kernel-devel`, `flex`, `bison` packages are up-to-date/installed:
`sudo dnf install kernel-devel && flex && bison`

Navigate to the folder with the downloaded driver:
`cd ~/<your folder>/cm3218-master`

Make the module:
`sudo make`

# Script to adjust display brightness

If the display brightness is not adjustable by GUI and You don't want to adjust it in the terminal every time, this script can be used to set it to a certain value at system startup or every time it is executed. 

Just change the brightness value (`bright_lvl`) inside the script as You wish and add it to Your startup-applications (`/etc/profile.d/`).

To use keybindings for the backlight adjustment on-the-go, xbindkeys and xbacklight need to be installed:

`sudo dnf install xbacklight && xbindkeys`
