#!/bin/bash
dialog --menu "Choose one:" 10 30 3 1 red 2 green 3 blue 2>/tmp/answer.$$
clear
read ANSWER < /tmp/answer.$$
rm /tmp/answer.$$
echo $ANSWER
