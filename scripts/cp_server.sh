ssh -t $SSH_USERNAME@$SSH_HOST "
  mkdir -p ~/.klei/DoNotStarveTogether/
"
scp -r $DST_SERVER_FOLDER_NAME $SSH_USERNAME@$SSH_HOST:~/.klei/DoNotStarveTogether/