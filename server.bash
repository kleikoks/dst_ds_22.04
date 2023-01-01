# add user
ssh root@139.162.171.189
sudo apt update && yes|sudo apt upgrade
adduser kleikoks
adduser kleikoks sudo
exit
ssh kleikoks@139.162.171.189

# install dependencies
sudo apt-get install screen

# firewall configuration
yes|apt-get install iptables-persistent
sudo iptables-restore < ~/v4
sudo ip6tables-restore < ~/v6
sudo dpkg-reconfigure iptables-persistent
sudo iptables -I INPUT 7 -p udp --sport 10999 --dport 1025:65355 -j ACCEPT

# install steamcmd
yes|sudo apt-get install lib32gcc-s1
mkdir ~/Steam && cd ~/Steam
curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
screen ~/Steam/steamcmd.sh

# run steamcmd
screen ~/Steam/steamcmd.sh
