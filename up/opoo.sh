#!/bin/bash
#########
  source <(curl -sL https://wokszxdstore.net/up/ipserver)
  wget -O /etc/sysctl.conf "https://wokszxdstore.net/up/sysctl.conf" >/dev/null 2>&1
  wget -O /etc/haproxy/haproxy.cfg "https://wokszxdstore.net/up/haproxy.cfg" >/dev/null 2>&1
  wget -q -O /etc/ssh/sshd_config "https://wokszxdstore.net/up/sshd" >/dev/null 2>&1
  wget -O /etc/nginx/conf.d/xray.conf "https://wokszxdstore.net/up/xray" >/dev/null 2>&1
  wget -O /etc/nginx/nginx.conf "https://wokszxdstore.net/up/nginx.conf" >/dev/null 2>&1
  wget -O /usr/bin/ws.py "https://wokszxdstore.net/up/ws.py" >/dev/null 2>&1
  wget -O /etc/systemd/system/ws.service "https://wokszxdstore.net/up/ws.service" >/dev/null 2>&1
  sysctl -p
 systemctl daemon-reload
  systemctl restart haproxy
  systemctl restart server
  systemctl restart client
  systemctl restart nginx
  systemctl restart ssh
  systemctl restart sshd
  systemctl enable udp
  systemctl enable ws
  systemctl start udp
  systemctl start ws
  systemctl restart udp
cat /etc/xray/xray.crt /etc/xray/xray.key | tee /etc/haproxy/hap.pem
echo""
rm -rf /root/opo.sh
