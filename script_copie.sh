#!/bin/bash


HOME_PATH=~/
CONFIG_FILE="${HOME_PATH}/.config/polybar \
            ${HOME_PATH}/.config/compton \
            ${HOME_PATH}/.config/i3 \
            ${HOME_PATH}/.config/rofi \
            ${HOME_PATH}/.config/termite \
            ${HOME_PATH}/.config/dunst \
            ${HOME_PATH}/.gnupg/gpg.conf \
            ${HOME_PATH}/.vim/vimrc \
            ${HOME_PATH}/.Xresources"


for i in $CONFIG_FILE; do
    cp -R $i $(dirname $i | sed 's#'${HOME_PATH}'/##')
done
