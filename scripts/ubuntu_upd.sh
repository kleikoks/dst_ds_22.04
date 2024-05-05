ssh -t $SSH_USERNAME@$SSH_HOST "
  export DEBIAN_FRONTEND=noninteractive

  apt-get update
  apt-get upgrade -y

  apt-get install -y screen
"