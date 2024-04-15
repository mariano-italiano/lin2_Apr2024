#!/bin/bash

FILENAME=/tmp/file

while true
do
	if [[ -e "$FILENAME" ]]; then
		/tmp/script.sh
	else
		sleep 60
	fi
done
