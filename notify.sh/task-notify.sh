#!/bin/sh
user=$(id -u)
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$user/bus
dt=$(date +\%H:%M)
notify-send $dt "$1" -u critical -i $HOME/.config/task/task.png
paplay --volume=60000 $HOME/.config/task/notify.mp3
