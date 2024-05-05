ssh -t $SSH_USERNAME@$SSH_HOST "
  apt-get install -y lib32gcc-s1
  mkdir -p $STEAM_FOLDER && cd $STEAM_FOLDER
  curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

  $STEAM_FOLDER/steamcmd.sh +force_install_dir ../dstserver +login $STEAM_LOGIN $STEAM_PASSWORD +app_update 343050 +quit
"