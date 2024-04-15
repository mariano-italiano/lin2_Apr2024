#!/bin/bash

FILENAME=/tmp/file
ACTION=$1

if [[ "ACTION" = "start" ]] ; then
	/home/student/monitor.sh &
	echo $! > /var/run/monitor.pid
elif [[ "ACTION" = "stop" ]]; then
	kill `cat /var/run/monitor.pid`
	rm /var/run/monitor.pid
fi


while true
do
        if [[ -e "$FILENAME" ]]; then
                /tmp/script.sh
		break
        else
                sleep 60
        fi
done

