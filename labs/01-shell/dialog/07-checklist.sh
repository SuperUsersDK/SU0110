#!/bin/bash
dialog --checklist "Choose toppings:" 10 40 3 \
        1 Cheese on \
        2 "Tomato Sauce" on \
        3 Anchovies off 2>/tmp/answer.$$
clear
read ANSWER < /tmp/answer.$$
echo $ANSWER
rm /tmp/answer.$$
