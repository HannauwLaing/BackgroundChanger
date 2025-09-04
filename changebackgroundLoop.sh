#!/usr/bin/env bash
#Defaults
SETTINGSFILE="Settings.txt"
SLEEPTIME=15

# SETTINGSFILE=$(sed -n '1p' "$SETTINGSFILE")
SLEEPTIME=$(($(sed -n '2p' "$SETTINGSFILE")))



while true; do
	sleep $((SLEEPTIME))
	./change-background.sh

	
done
exit

