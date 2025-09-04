#!/bin/bash

IMAGE_NAMES_FILE="backgroundImageNames.txt"

mkdir -p bin/wallpapers
DST_DIR="bin/wallpapers/"
while IFS= read -r line
do
    echo "Downloading file $line"

	wget -c -q -P $DST_DIR https://raw.githubusercontent.com/D3Ext/aesthetic-wallpapers/main/images/$line

done < $IMAGE_NAMES_FILE

