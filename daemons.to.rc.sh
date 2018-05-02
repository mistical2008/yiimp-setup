#!/bin/bash
echo "ENTER DAEMONS KEYWORD"
echo "In the end type 'Ctrl+D'"
while read line
do
    arr=("${arr[@]}" $line)
done
echo =========================================================
echo DAEMONS LIST
echo =========================================================
echo ""
for i in ${arr[*]}; do ls /usr/bin | grep $i; done | grep "d$";
echo ""
echo =========================================================
echo "COPY LIST ABOVE AND INSERT TO /etc/rc.local"
