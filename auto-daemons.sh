#!/bin/bash
USER=$1;
DAEMONS=$(</home/$USER/.pool-settings/daemons);

for DAEMON in DAEMONS
do 
 $DAEMON
done
