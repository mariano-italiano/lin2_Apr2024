#!/bin/bash
# Przechwytywanie sygnału SIGINT oraz SIGTERM

LOGFILE=/tmp/skrypt.signals
CTRLC=0


function przechwyc_sigint {
	CTRLC=$(( $CTRLC + 1 ))
	if [[ $CTRLC > 0 ]] ; then
		echo "Wystapił SIGINT po raz $CTRLC" >> $LOGFILE
	fi	
}

function przechwyc_sigterm {
	echo "Wyslałeś mi KILL (15) ale ja jestem sprytniejszy i działam dalej" >> $LOGFILE
}


trap przechwyc_sigint SIGINT
trap przechwyc_sigterm SIGTERM

while true
do
	sleep 10
done

