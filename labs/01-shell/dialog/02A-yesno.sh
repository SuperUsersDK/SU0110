#!/bin/bash
dialog --title "Message"  --yesno "Are you having fun?" 6 25
RC=$?
clear
echo $RC

