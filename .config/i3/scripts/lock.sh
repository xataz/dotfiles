#!/bin/bash

PICTURE=/tmp/i3lock.png

scrot $PICTURE
convert $PICTURE -blur 5x4 $PICTURE
i3lock -i $PICTURE
rm $PICTURE
