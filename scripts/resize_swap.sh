ssh -t $SSH_USERNAME@$SSH_HOST "
  fallocate -l 1G swapfile
  chmod 600 swapfile
  mkswap swapfile
  swapon swapfile
  'swapfile none swap sw 0 0' | tee -a /etc/fstab
"