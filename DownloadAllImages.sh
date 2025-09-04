#!/bin/bash


IMAGE_NAMES_FILE="backgroundImageNames.txt"

DST_DIR="wallpaper/"

while IFS= read -r line
do
    echo "Downloading file $line"
	
	wget -c -P wallpapers/ https://raw.githubusercontent.com/D3Ext/aesthetic-wallpapers/main/images/$line
done < $IMAGE_NAMES_FILE

