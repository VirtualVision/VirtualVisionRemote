sudo modprobe bcm2835-v4l2
i=0
#while [ $i -lt 0 ]
while [ true ]
do
	if test $(ps -e | grep swirski_tracker -o)
	then
		r=$((i))
		#echo "tracker detected"
	else
		sudo /home/pi/build/PupilTracker/swirski_tracker
		#echo "need to start tracker"
	fi
done
