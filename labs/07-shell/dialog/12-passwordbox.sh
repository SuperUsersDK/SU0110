#!/bin/bash
dialog --inputbox "Enter your name:" 8 40 2>/tmp/answer.$$
clear
read ANSWER < /tmp/answer.$$ 
rm /tmp/answer.$$
dialog --passwordbox "Enter your password:" 8 40 2>/tmp/answer.$$
clear
read PASSWD < /tmp/answer.$$ 
rm /tmp/answer.$$
if [ $PASSWD = "secret" ] 
then
	echo "Access granted"
else
	echo "Access denied"
fi
