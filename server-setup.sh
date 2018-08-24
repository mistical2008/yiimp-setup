#!/bin/bash
USER=$(whoami)
echo current user is $USER
#Update system
apt-get update;
yes | apt-get upgrade;
yes | apt-get autoremove;
sudo apt-get install software-properties-common;
sudo add-apt-repository ppa:bitcoin/bitcoin;
sudo apt-get update;
yes | apt-get install python-pip tmux libdb4.8-dev libdb4.8++ libdb4.8 libdb4.8++-dev;
pip install --upgrade pip;

# Set file structure
mkdir /home/$USER/{autostart,.pool-settings}
touch /home/$USER/.pool-settings/{algorithms,daemons}
cp auto-* /home/$USER/autostart/

