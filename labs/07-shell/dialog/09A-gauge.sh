#!/bin/bash

MAX_COUNT=25
for f in $(seq 1 $MAX_COUNT)
do
	echo $((f*4)) | dialog --gauge "Copying - please wait" 8 35  
  sleep 1
done &
GAUGE_PID=$!
trap "kill $GAUGE_PID" 0

sleep $((MAX_COUNT))

