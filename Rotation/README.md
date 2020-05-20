# Scripts to resolve rotation issues

If the automatic rotation works OOTB (e. g. in elementaryOS 5.1), it may be off by 90°. To solve this issue, You need to place the **61-sensor-local.hwdb** file in the `/etc/udev/hwdb.d/` directory.

Otherwise, You can use the .desktop files and corresponding shell scripts to rotate Your display into Landscape or Portrait mode.
Be sure to specify the paths to the scripts in the .desktop files!

Put the .desktop files either into `/usr/local/share/applications` or `/usr/share/applications` to show them in the menu.
