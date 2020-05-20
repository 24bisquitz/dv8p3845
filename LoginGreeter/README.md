# Using LXDM as the greeter
LXDM is the preinstalled greeter, which unfortunatly isn't very tweakable. It also doesn't include a virtual keyboard, which is a crucial feature for a tablet.
Still, it is very lightweight and fast, compared with the other greeters.

In the file `/etc/lxdm/lxdm.conf`, uncomment `skip_password=1`, to allow automatic login without a keyboard. However, this implies that you are OK with an unsecured login.
You can also change the path to the background picture in this file.

You may have to open it with `sudo vi` or `sudo vim`, since `sudo leafpad` may not be working.

# Using Light-DM as the greeter
A GNOME-reliant greeter with more options and a virtual keyboard.
It has a couple of GNOME-dependencies, which will be installed along with it.
