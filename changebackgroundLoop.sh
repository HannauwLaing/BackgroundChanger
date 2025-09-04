while true; do
	sleep 15
	~/Onstartup/backgrounds/change-background.sh &
	
done
exit

#
# ~/Onstartup/backgrounds/change-background.sh &
# cd &
# exit
#
#
# DELAY=1
#
# while true; do
# 	settingsfile='/home/hannauw/Onstartup/BackgroundSettings.txt'
# 	i=1  
# 	while read line; do    
# 	#Reading each line  
#
# 	echo "Line No. $i : $line"  
# 	if [$i -eq 1]; then
# 		$IMAGE_DIR=$line
# 	fi
# 	if [$i == 2]; then
# 		$DELAY=$line
# 	fi
# 	if [$i == 3]; then
# 		$TYPE=$line
# 	fi
# 	i=$((i+1))
# 	done<$settingsfile
# 	#~/Onstartup/backgrounds/change-background.sh &
# 	DELAY=1
# 	sleep $DELAY
# done
#
#

