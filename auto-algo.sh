#!/bin/bash
STRATUM_DIR=/var/stratum;
USER=$1;
ALGOS=$(</home/$USER/.pool-settings/algorithms);

for ALGO in ALGOS
do 
screen -dmS $ALGO $STRATUM_DIR/run.sh $ALGO
done
