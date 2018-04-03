# Some improvements
echo 'alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"' >> ~/.bashrc
echo 'alias rc-add="sudo nano /etc/rc.local"' >> ~/.bashrc 
cat <<EOF> ~/.tmux.conf
# Point out to powerline
source /usr/lib/python3.6/site-packages/powerline/bindings/tmux/powerline.conf

# Set colors support
set -g default-terminal "xterm-256color"

# set mouse on
set -g mouse on

# Set hook for continuum plugin
set -g @continuum-restore 'on'

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com/user/plugin'
# set -g @plugin 'git@bitbucket.com/user/plugin'

set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
EOF

powerline-config tmux setup;
powerline-daemon --replace;


# Donwnloading script and install
wget https://raw.githubusercontent.com/xavatar/yiimp_install_scrypt/master/install.sh;
chmod +x install.sh;
bash install.sh;
