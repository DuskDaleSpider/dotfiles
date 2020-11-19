#!/bin/bash

systemctl --user import-environment DISPLAY

# Dbus fix
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

/usr/bin/xdg-user-dirs-update

#exec openbox-session

#start service for mapping the brightness functions on keyboard
xbindkeys

#start daemon to disable touchpad scrolling/clicking during typing
syndaemon -i 0.5 -t -K -d

#start compositor (for transparancy) and i3
picom &
exec i3
