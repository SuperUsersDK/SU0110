#!/bin/sh

FILE=$(dialog --stdout --title "Please choose a file" --fselect $HOME/ 14 48)
clear
case $? in
	0)
		echo "\"$FILE\" chosen";;
	1)
		echo "Cancel pressed.";;
	255)
		echo "Box closed.";;
esac



