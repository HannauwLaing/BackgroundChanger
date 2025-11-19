#!/usr/bin/env bash
#Defaults
SETTINGSFILE="Settings.txt"
# SLEEPTIME=15
CUR_DIR=$( dirname ${BASH_SOURCE[0]})
IMAGE_DIR="$CUR_DIR/$(sed -n '2p' "$SETTINGSFILE")"
SLEEPTIME=$(($(sed -n '4p' "$SETTINGSFILE")))
FIRSTFILE="$IMAGE_DIR/$(sed -n '6p' "$SETTINGSFILE")"

gsettings set org.gnome.desktop.background picture-uri-dark "$FIRSTFILE"

while true; do
	sleep $((SLEEPTIME))
	./change-background.sh
done
exit

