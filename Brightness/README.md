# Script to adjust display brightness

If the display brightness is not adjustable by GUI and you don't want to adjust it in the terminal every time, the `dimMer.sh` script can be used to set it to a certain value at system startup or every time it is executed. 

Just change the brightness value (`bright_lvl`) inside the script as you wish and add it to your startup-applications (`/etc/profile.d/`).

To use keybindings for the backlight adjustment on-the-go, xbindkeys and xbacklight need to be installed:

`sudo dnf install xbacklight && xbindkeys`

Then, put the `.xbindkeysrc`-file into your home directory. This will enable you to use you homebutton together with the volume-up or -down buttons to adjust the display brightness manually.

# Automatic Brightness Adjustment
There is a way to enable the automatic brightness adjustment via the internal ambient light sensor. However, this does not work yet on newer kernels (>5.4), because `make` fails. (Error: /Documentation/Kconfig missing)

Download the driver for the Ambient Light Sensor (https://github.com/hadess/cm3218) and install it:

Make sure `kernel-devel`, `flex`, `bison` packages are up-to-date/installed:

`sudo dnf install kernel-devel && flex && bison`

Navigate to the folder with the downloaded driver:

`cd ~/<your folder>/cm3218-master`

Make the module:

`sudo make`
