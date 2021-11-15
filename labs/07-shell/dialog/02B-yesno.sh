#!/bin/bash

dialog --title " My first dialog" --clear \
--yesno "Hello , this is my first dialog program" 10 30
RC=$?
clear

case $RC in
0)
echo "Yes chosen.";;
1)
echo "No chosen.";;
255)
echo "ESC pressed.";;
esac
