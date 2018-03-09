#!/bin/bash

ACTION=$1
STATUS=$(playerctl -p spotify status)

if [ "${ACTION}" == "get" ]; then
    ARTIST=$(playerctl -p spotify metadata 'xesam:albumArtist')
    TITLE=$(playerctl -p spotify metadata 'xesam:title')

    if [ "${STATUS}" == "Playing" ]; then
        echo " $ARTIST - $TITLE"
    elif [ "${STATUS}" == "Paused" ]; then
        echo " $ARTIST - $TITLE"
    else
        echo " $ARTIST - $TITLE"
    fi
elif [ "${ACTION}" == "status" ]; then
    if [[ "${STATUS}" == "Playing" ]] || [[ "${STATUS}" == "Paused" ]]; then
        exit 0
    else
        exit 1
    fi
fi
