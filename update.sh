#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
REPO="https://raw.githubusercontent.com/Salampahah/XD/xd/"
echo -e " [INFO] Downloading Update File"
sleep 2
wget ${REPO}menu/menu.zip
    unzip menu.zip
    chmod +x menu/*
    mv menu/* /usr/local/sbin
    rm -rf menu
    rm -rf menu.zip

echo -e " [INFO] Update Successfully"
rm -rf update.sh
sleep 2
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu
exit
