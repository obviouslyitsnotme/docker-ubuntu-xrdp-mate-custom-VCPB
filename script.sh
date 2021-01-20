#!/bin/bash
if [ $UID -eq 0 ]; then
user=$1vcpb 
exec su "$user" "$0" -- "$@"
fi
echo "This will be run from user $UID"
mv /home/Telegram/Telegram /home/vcpb/Desktop/Telegram #Move Telegram to vcpb/Desktop
pactl load-module module-null-sink sink_name=MySink #loading MySink
pactl set-default-sink MySink #setting Mysink as default Mic
cd /home/vcbot 
python3 bot.py
