#!/usr/bin/env bash
#Defaults
CUR_DIR=$( dirname ${BASH_SOURCE[0]})
SETTINGSFILE="$CUR_DIR/Settings.txt"
# SLEEPTIME=15
IMAGE_DIR="$CUR_DIR/$(sed -n '2p' "$SETTINGSFILE")"
SLEEPTIME=$(($(sed -n '4p' "$SETTINGSFILE")))
FIRSTFILE="$IMAGE_DIR/$(sed -n '6p' "$SETTINGSFILE")"


FILE_PATH="$(realpath $FIRSTFILE)"

gsettings set org.gnome.desktop.background picture-uri-dark "file://$FILE_PATH"
gsettings set org.gnome.desktop.background picture-uri "file://$FILE_PATH"

while true; do
	sleep $((SLEEPTIME))
	$CUR_DIR/change-background.sh
done
exit

