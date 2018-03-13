# Set processes running in background
LOG_DIR=/var/stratum/log
WEB_DIR=/var/web
STRATUM_DIR=/var/stratum

screen -dmS main $WEB_DIR/main.sh
screen -dmS loop2 $WEB_DIR/loop2.sh
screen -dmS blocks $WEB_DIR/blocks.sh
screen -dmS debug tail -f $LOG_DIR/debug.log
screen -dmS neo $STRATUM_DIR/run.sh neo
