#dfdffd
#Update system
apt-get update;
yes | apt-get upgrade;
yes | apt-get autoremove;
yes | apt-get install pip powerline;
pip install --upgrade pip;
echo 'open and detach tmux then input this command: "powerline-config tmux setup""';


# Add user
cat <<EOF

TYPE UNIX USER NAME
EOF
read -p 'Enter user name for unix account: ' user;
adduser $user;
adduser $user sudo;
sudo su $user
