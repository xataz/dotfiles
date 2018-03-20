#!/bin/bash

NB_PKGS=$(trizen -Quq | wc -l)
NB_AURS=$(trizen -Quaq | wc -l)

MSG="Updates available : ${NB_PKGS}
AUR updates available : ${NB_AURS}"

if [[ ${NB_PKGS} -gt 0 || ${NB_AURS} -gt 0 ]]; then
    echo "${NB_PKGS}  ${NB_AURS}"
fi

