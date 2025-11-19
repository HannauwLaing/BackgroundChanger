#!/bin/bash

#Source of images:
# https://github.com/D3Ext/aesthetic-wallpapers/tree/main/images

# Directory containing your images
IMAGE_DIR="bin/wallpapers"

# Type of wallpaper
# cosmic,
TYPE=''

FILE=$(find "$IMAGE_DIR" -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.gif' -o -iname '*.bmp' -o -iname '*'+$TYPE+'*' \) | shuf -n 1)

gsettings set org.gnome.desktop.background picture-uri-dark "file://$FILE"

exit

