#!/bin/bash

NB_PKGS=$(trizen -Quq | wc -l)
NB_AURS=$(trizen -Quaq | wc -l)

echo "${NB_PKGS} (${NB_AURS})"
