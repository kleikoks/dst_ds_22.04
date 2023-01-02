# add user
ssh root@139.144.181.224
sudo apt update && yes|sudo apt upgrade
adduser kleikoks
adduser kleikoks sudo
exit
# todo reboot server to remove annoying kernel hint
ssh kleikoks@139.144.181.224

# install dependencies
sudo apt install screen

# authorize git
ssh-keygen -o
cat ~/.ssh/id_rsa.pub
git clone git@github.com:kleikoks/dst_ds_22.04.git

# firewall configuration
sudo apt-get install iptables-persistent
sudo iptables-restore < ~/dst_ds_22.04/v4
sudo ip6tables-restore < ~/dst_ds_22.04/v6
sudo iptables -I INPUT 7 -p udp --sport 10999 --dport 1025:65355 -j ACCEPT
sudo iptables -I INPUT 7 -p udp --sport 11000 --dport 1025:65355 -j ACCEPT
sudo iptables -I INPUT 7 -p udp --sport 11001 --dport 1025:65355 -j ACCEPT
sudo iptables -I INPUT 7 -p udp --sport 10889 --dport 1025:65355 -j ACCEPT
sudo dpkg-reconfigure iptables-persistent

# install steamcmd
yes|sudo apt-get install lib32gcc-s1
mkdir ~/Steam && cd ~/Steam
curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

# install/update dst
screen ~/Steam/steamcmd.sh
force_install_dir ./dstserver
login oleksiy9164
app_update 343050

# run game first time needed
cd ~/Steam/dstserver/bin64/
screen -S "DST Server" ./dontstarve_dedicated_server_nullrenderer_x64

# get the server configs (already on git)
https://accounts.klei.com/
https://accounts.klei.com/account/game/servers?game=DontStarveTogether # download archive

# prepare server
cp -a ~/dst_ds_22.04/MyDediServer/ ~/.klei/DoNotStarveTogether/
cp ~/dst_ds_22.04/dedicated_server_mods_setup.lua ~/Steam//dstserver/mods/dedicated_server_mods_setup.lua
cp ~/dst_ds_22.04/dedicated_server_mods_setup.lua ~/Steam//dstserver/mods/modsettings.lua

# run server
chmod +x ~/dst_ds_22.04/startdst.sh
cd ~/dst_ds_22.04/
screen -S "dst" ./startdst.sh