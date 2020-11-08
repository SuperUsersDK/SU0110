#!/bin/bash
dialog --backtitle "CPU Selection" \
       --radiolist "Select CPU type:" 10 40 4 \
        1 ARM off \
        2 i686 on \
        3 SPARC off \
        4 Crusoe off 2>/tmp/answer.$$
read ANSWER < /tmp/answer.$$
echo $ANSWER
rm /tmp/answer.$$

