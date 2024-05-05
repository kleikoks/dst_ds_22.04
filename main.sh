# this script presumes that you already have public key on server

export DST_SERVER_FOLDER_NAME="DedicatedServer"
export STEAM_FOLDER="~/Steam"
export STEAM_LOGIN="oleksiy9164"
export STEAM_PASSWORD="pass"
export SSH_USERNAME="root"
export SSH_HOST="139.162.191.47"

. scripts/ubuntu_upd.sh
. scripts/iptables.sh
. scripts/resize_swap.sh
. scripts/cp_server_mods.sh
. scripts/cp_mods.sh
. scripts/steamcmd.sh
. scripts/dst_start.sh # CTRL + A + D better to do it with service...
. scripts/dst_attach.sh
. scripts/dst_stop.sh

screen -wipe
