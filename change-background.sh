#!/bin/bash

#Source of images:
# https://github.com/D3Ext/aesthetic-wallpapers/tree/main/images

CUR_DIR=$( dirname ${BASH_SOURCE[0]})
SETTINGSFILE="$CUR_DIR/Settings.txt"
# Directory containing your images

IMAGE_DIR=$CUR_DIR/$(sed -n '2p' "$SETTINGSFILE")

TYPE=''
FILE=$(find "$IMAGE_DIR" -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.gif' -o -iname '*.bmp' -o -iname '*'+$TYPE+'*' \) | shuf -n 1)

gsettings set org.gnome.desktop.background picture-uri-dark $FILE
exit

