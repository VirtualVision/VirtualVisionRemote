echo "initial initializing the raspicam."
sudo modprobe bcm2835-v4l2

isRunning=$(ps -e | grep swirski_tracker -o)

#echo $isRunning

i=0

#echo $i

while [ "$i" -lt 5 ]
do
	if  [ $isRunning ]; then
		echo "tracker is running."
	else
		echo "tracker is NOT running."
		echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		/home/pi/build/PupilTracker/swirski_tracker
	fi
#	i=$((i+1))
	isRunning=""
done
