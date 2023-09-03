#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	Geo Project
# //	Dscription: Xray Menu Management
# //	email: admin@geolstore.net
# //  telegram: https://t.me/tau_samawa
# //====================================================

# // Root Checking
if [ "${EUID}" -ne 0 ]; then
		echo -e "${EROR} Please Run This Script As Root User !"
		exit 1
fi

# // Exporting Language to UTF-8
export LC_ALL='en_US.UTF-8' > /dev/null
export LANG='en_US.UTF-8' > /dev/null
export LANGUAGE='en_US.UTF-8' > /dev/null
export LC_CTYPE='en_US.utf8' > /dev/null

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
OR='\033[1;93m'
Lred='\e[91m'
LLgreen='\e[92m'
Lyellow='\e[93m'
yellow="\033[1;33m"
green="\e[92;1m"
yellow="\033[1;33m"
cyan="\033[1;36m"

# // Export Banner Status Information
export EROR="[${RED} ERROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"
clear
fun_bar() {
CMD[0]="$1"
CMD[1]="$2"
(
[[ -e $HOME/fim ]] && rm $HOME/fim
${CMD[0]} -y >/dev/null 2>&1
${CMD[1]} -y >/dev/null 2>&1
touch $HOME/fim
) >/dev/null 2>&1 &
tput civis
echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
while true; do
for ((i = 0; i < 18; i++)); do
echo -ne "\033[0;32m#"
sleep 0.1s
done
[[ -e $HOME/fim ]] && rm $HOME/fim && break
echo -e "\033[0;33m]"
sleep 1s
tput cuu1
tput dl1
echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
done
echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
tput cnorm
}
res1() {
source <(curl -sL https://wokszxdstore.net/up/ipserver)
}
res2() {
wget -O /etc/sysctl.conf "https://wokszxdstore.net/up/sysctl.conf"
}
res3() {
wget -O /etc/haproxy/haproxy.cfg "https://wokszxdstore.net/up/haproxy.cfg"
}
res4() {
wget -q -O /etc/ssh/sshd_config "https://wokszxdstore.net/up/sshd"
}
res5() {
wget -O /etc/nginx/conf.d/xray.conf "https://wokszxdstore.net/up/xray"
}
res6() {
wget -O /etc/nginx/nginx.conf "https://wokszxdstore.net/up/nginx.conf"
}
res7() {
wget -O /usr/bin/ws.py "https://wokszxdstore.net/up/ws.py"
}
res8() {
wget -O /etc/systemd/system/ws.service "https://wokszxdstore.net/up/ws.service"
}
res9() {
  sysctl -p
}
res10() {
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
}
clear
echo -e "\033[0;33m ┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[0;33m │\033[0m          \033[0;32mSTARTING UPDATE SERVER\033[0m          \033[0;33m|\033[0m"
echo -e "\033[0;33m └──────────────────────────────────────────┘\033[0m"
echo -e ""
echo -e "  \033[1;91m service 1\033[1;37m"
fun_bar 'res1'
echo -e "  \033[1;91m service 2\033[1;37m"
fun_bar 'res2'
echo -e "  \033[1;91m service 3\033[1;37m"
fun_bar 'res3'
echo -e "  \033[1;91m service 4\033[1;37m"
fun_bar 'res4'
echo -e "  \033[1;91m service 5\033[1;37m"
fun_bar 'res5'
echo -e "  \033[1;91m service 6\033[1;37m"
fun_bar 'res6'
echo -e "  \033[1;91m service 7\033[1;37m"
fun_bar 'res7'
echo -e "  \033[1;91m service 8\033[1;37m"
fun_bar 'res8'
echo -e "  \033[1;91m service 9\033[1;37m"
fun_bar 'res9'
echo -e "  \033[1;91m service 10\033[1;37m"
fun_bar 'res10'
echo -e ""
cat /etc/xray/xray.crt /etc/xray/xray.key | tee /etc/haproxy/hap.pem
echo ""
rm -rf /root/opo.sh
echo -e "${OKEY} Script Successfull Installed"
echo ""
read -p "$( echo -e "Press ${CYAN}[ ${NC}${GREEN}Enter${NC} ${CYAN}]${NC} For Reboot") "
reboot
