#!/bin/bash
chmod +x /app/qbittorrent-nox
chmod +x /app/ngrok
chmod +x /app/clone.sh
chmod +x /app/rclone
nohup /app/qbittorrent-nox -d --webui-port=8080 &
nohup /app/ngrok authtoken 1mYe6zSkY2smRhZJMiZXew8I5RD_46CfS6QhJiTGdy2uJNo57 &
chmod +x /app/ngok.sh
/app/ngok.sh

cd tcloud

node server.js



