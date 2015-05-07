i=0
while [ "$i" -lt 1 ]
do
	if test $(ps -e | grep swirski_tracker -o)
	then
		i=$((i+1))
	else
		sudo /home/pi/build/PupilTracker/swirski_tacker &
		i=$((i+1))
	fi
i=$((i+1))
done

#from rc.local for backup
#i=0
#while [ "$i" -lt 1 ]
#do
#	if test $(ps -e | grep swirski_tracker -o)
#	then
#		echo "tracker is running."
#	else
#		echo "tracker is NOT running."
#		echo "start the tracker!"
#		sudo /home/pi/VirtualVisionRemote/startup.sh &
#	fi
#	i=$((i+1))
#done
