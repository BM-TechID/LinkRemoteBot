#!/usr/bin/env bash
#untuk run
rm -rf logremot.txt
screen -dmS remot -L -Logfile /logremot.txt ssh - .ssh/remot -o StrictHostKeyChecking=no -R 80:localhost:80 localhost.run
./bot
clear
echo "Sudah dikirim ke Telegramu"
host=$(cat /logremot.txt|grep tunneled|awk '{print $1}')
echo "Host: $host"
