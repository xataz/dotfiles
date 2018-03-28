#!/bin/bash

dmenu_entries="logout\nshutdown\nreboot\nrestart\nhalt\nstop"

command="$(echo -e "$dmenu_entries" | rofi -dmenu -p 'powermenu')"

case "$command" in
    "logout")
        i3-msg exit
        ;;
    "shutdown"|"halt")
        shutdown -h now
        ;;
    "reboot"|"restart"|"stop")
        reboot
        ;;
    "*")
        echo $command
        ;;
esac