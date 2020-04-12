# Make Firefox Touch-Friendly

Here You can find a script and .desktop file to launch an already installed Firefox-Browser with enabled touch-gestures.

Of course, You need to change the path to your Firefox in the .sh file and the path to your .sh file in the .desktop file, according to their location.

Alternatively, You can just add MOZ_USE_XINPUT2 DEFAULT=1 to /etc/security/pam_env.conf and reboot or logout to confirm the changes. 
