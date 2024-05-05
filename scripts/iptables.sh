ssh -t $SSH_USERNAME@$SSH_HOST "
  export DEBIAN_FRONTEND=noninteractive
  apt-get install -y iptables-persistent

  # Allow all loopback (lo0) traffic and reject traffic
  # to localhost that does not originate from lo0.
  iptables -A INPUT -i lo -j ACCEPT
  iptables -A INPUT ! -i lo -s 127.0.0.0/8 -j REJECT

  # Allow ping.
  iptables -A INPUT -p icmp -m state --state NEW --icmp-type 8 -j ACCEPT

  # Allow SSH connections.
  iptables -A INPUT -p tcp -m state --state NEW --dport 22 -j ACCEPT

  # Allow the Steam client.
  iptables -A INPUT -p udp -m udp --dport 27000:27030 -j ACCEPT
  iptables -A INPUT -p udp -m udp --dport 4380 -j ACCEPT

  # Allow inbound traffic from established connections.
  # This includes ICMP error returns.
  iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

  # Log what was incoming but denied (optional but useful).
  iptables -A INPUT -m limit --limit 3/min -j LOG --log-prefix 'iptables_INPUT_denied: ' --log-level 7
  iptables -A FORWARD -m limit --limit 3/min -j LOG --log-prefix 'iptables_FORWARD_denied: ' --log-level 7

  # Reject all other inbound.
  iptables -A INPUT -j REJECT
  iptables -A FORWARD -j REJECT

  # Allow all loopback (lo0) traffic and reject traffic
  # to localhost that does not originate from lo0.
  ip6tables -A INPUT -i lo -j ACCEPT
  ip6tables -A INPUT ! -i lo -s ::1/128 -j REJECT

  # Allow ICMP.
  ip6tables -A INPUT -p icmpv6 -j ACCEPT

  # Allow inbound traffic from established connections.
  ip6tables -A INPUT -m state --state ESTABLISHED -j ACCEPT

  # Reject all other inbound.
  ip6tables -A INPUT -j REJECT
  ip6tables -A FORWARD -j REJECT

  iptables -I INPUT 7 -p udp --sport 8767 -j ACCEPT
  iptables -I INPUT 7 -p udp --sport 8768 -j ACCEPT
  iptables -I INPUT 7 -p udp --sport 8769 -j ACCEPT
  iptables -I INPUT 7 -p udp --sport 10889 -j ACCEPT
  iptables -I INPUT 7 -p udp --sport 10999 -j ACCEPT
  iptables -I INPUT 7 -p udp --sport 11000 -j ACCEPT
  iptables -I INPUT 7 -p udp --sport 11001 -j ACCEPT
  iptables -I INPUT 7 -p udp --sport 27017 -j ACCEPT
  iptables -I INPUT 7 -p udp --sport 27018 -j ACCEPT
  iptables -I INPUT 7 -p udp --sport 27019 -j ACCEPT

  dpkg-reconfigure iptables-persistent
"