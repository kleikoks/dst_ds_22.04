ssh -t $SSH_USERNAME@$SSH_HOST "
  mkdir -p ~/dstserver/mods/
  mkdir -p ~/dstserver/ugc_mods/$DST_SERVER_FOLDER_NAME/Master/content/322330/2804492445/
  mkdir -p ~/dstserver/ugc_mods/$DST_SERVER_FOLDER_NAME/Caves/content/322330/2804492445/
"
scp modmain.lua $SSH_USERNAME@$SSH_HOST:~/dstserver/ugc_mods/$DST_SERVER_FOLDER_NAME/Caves/content/322330/2804492445/
scp modmain.lua $SSH_USERNAME@$SSH_HOST:~/dstserver/ugc_mods/$DST_SERVER_FOLDER_NAME/Master/content/322330/2804492445/

scp dedicated_server_mods_setup.lua $SSH_USERNAME@$SSH_HOST:~/dstserver/mods/
scp modsettings.lua $SSH_USERNAME@$SSH_HOST:~/dstserver/mods/