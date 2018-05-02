#!/bin/bash
#Update system
apt-get update;
yes | apt-get upgrade;
yes | apt-get autoremove;
sudo apt-get install software-properties-common;
sudo add-apt-repository ppa:bitcoin/bitcoin;
sudo apt-get update;
yes | apt-get install python-pip powerline tmux libdb4.8-dev libdb4.8++ libdb4.8 libdb4.8++-dev;
pip install --upgrade pip;

echo 'open and detach tmux then input this command: "powerline-config tmux setup""';


# Add user
cat <<EOF

TYPE UNIX USER NAME
EOF
read -p 'Enter user name for unix account: ' user;
adduser $user;
adduser $user sudo;
sudo su $user;
cp yiimp-install.sh /home/$user/;
chown $user.$user /home/$user/yiimp-install.sh;
