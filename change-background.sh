#!/bin/bash

#Source of images:
# https://github.com/D3Ext/aesthetic-wallpapers/tree/main/images

# Directory containing your images
# IMAGE_DIR="/home/hannauw/Onstartup/backgrounds/wallpapers"
IMAGE_DIR="/home/hannauw/Onstartup/backgrounds/wallpapers"


settingsfile=' cat ~/Onstartup/backgrounds/Settings.txt'
  
# Type of wallpaper
# cosmic,
TYPE=''

FILE=$(find "$IMAGE_DIR" -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.gif' -o -iname '*.bmp' -o -iname '*'+$TYPE+'*' \) | shuf -n 1)

gsettings set org.gnome.desktop.background picture-uri-dark "file://$FILE"

exit

# # Infinite loop to change background randomly
# while true; do
#   # Wait for the specified delay
#   sleep $BACKGROUND_SWAP_DELAY
#
#   # Select a random image, filtering for common image file extensions
#   FILE=$(find "$IMAGE_DIR" -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.bmp' -o -iname '*'+$TYPE+'*' \) | shuf -n 1)
#
#   # Change the background
#   gsettings set org.gnome.desktop.background picture-uri-dark "file://$FILE"
#
# done
#
