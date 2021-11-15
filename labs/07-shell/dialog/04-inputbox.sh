#!/bin/bash
dialog --inputbox "Enter your name:" 8 40 2>/tmp/answer.$$
clear
read ANSWER < /tmp/answer.$$ 
rm /tmp/answer.$$
echo $ANSWER
