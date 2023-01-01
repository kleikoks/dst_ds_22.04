# add user
ssh root@139.162.171.189
sudo apt update && yes|sudo apt upgrade
adduser kleikoks
adduser kleikoks sudo
exit
ssh kleikoks@139.162.171.189

# install dependencies
sudo apt install screen

# firewall configuration
yes|apt-get install iptables-persistent
sudo iptables-restore < ~/dst_ds_22.04/v4
sudo ip6tables-restore < ~/dst_ds_22.04/v6
sudo dpkg-reconfigure iptables-persistent
sudo iptables -I INPUT 7 -p udp --sport 10999 --dport 1025:65355 -j ACCEPT
sudo dpkg-reconfigure iptables-persistent

# install steamcmd
yes|sudo apt-get install lib32gcc-s1
mkdir ~/Steam && cd ~/Steam
curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

# install/update dst
screen ~/Steam/steamcmd.sh
force_install_dir ./dstserver
login oleksiy9164

# authorize git
ssh-keygen -o
cat ~/.ssh/id_rsa.pub
git clone git@github.com:kleikoks/dst_ds_22.04.git

# run game first time needed
. ~/Steam/dstserver/bin/dontstarve_dedicated_server_nullrenderer
screen -S "DST Server" .~/Steam/dstserver/bin64/dontstarve_dedicated_server_nullrenderer_x64

# get the server configs
https://accounts.klei.com/
https://accounts.klei.com/account/game/servers?game=DontStarveTogether # download archive

# prepare server
cp -a ~/dst_ds_22.04/MyDediServer/ ~/.klei/DoNotStarveTogether/
cp ~/dst_ds_22.04/dedicated_server_mods_setup.lua ~/Steam//dstserver/mods/dedicated_server_mods_setup.lua
cp ~/dst_ds_22.04/dedicated_server_mods_setup.lua ~/Steam//dstserver/mods/modsettings.lua

# run server
chmod +x ~/dst_ds_22.04/startdst.sh
screen -S "dst" .~/dst_ds_22.04/startdst.sh