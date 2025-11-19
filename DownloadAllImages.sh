#!/bin/bash

IMAGE_NAMES_FILE="backgroundImageNames.txt"

DST_DIR="bin/wallpapers/"
mkdir -p $DST_DIR

while IFS= read -r line
do
    echo "Downloading file $line"

	wget -c -q -P $DST_DIR https://raw.githubusercontent.com/D3Ext/aesthetic-wallpapers/main/images/$line

done < $IMAGE_NAMES_FILE

