scp startdst.sh $SSH_USERNAME@$SSH_HOST:~/

ssh -t $SSH_USERNAME@$SSH_HOST "
  chmod +x ~/startdst.sh
  screen -S dst ~/startdst.sh
"
