#!/bin/bash
echo "ENTER DAEMONS KEYWORD DEVIDED WITH SPACES"
read -p "daemons array: " arr
for i in ${arr[*]}; do ls /usr/bin | grep $i; done | grep "d$";
echo "COPY LIST ABOVE AND INSERT TO /etc/rc.local"
