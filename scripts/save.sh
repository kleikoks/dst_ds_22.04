mv $DST_SERVER_FOLDER_NAME_$(date +"%Y-%m-%d_%H:%M:%S")
scp -r $SSH_USERNAME@$SSH_HOST:~/.klei/DoNotStarveTogether/$DST_SERVER_FOLDER_NAME/ ./