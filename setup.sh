#!/bin/bash

wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip -q ngrok-stable-linux-amd64.zip

# Install rclone static binary
wget -q https://downloads.rclone.org/v1.51.0/rclone-v1.51.0-linux-amd64.zip
unzip -q rclone-v1.51.0-linux-amd64.zip 


# echo "===== Download Tcloud App ====="
# URL=$(curl -s https://api.github.com/repos/lunik/tcloud/releases/latest | grep browser_download_url | cut -d '"' -f 4)
# wget $URL -O tcloud.tgz

# echo "===== Unarchive App ====="
# mkdir tcloud
# tar zxf tcloud.tgz -C tcloud --strip-components 1
# rm tcloud/public/index.html
# mv index.html tcloud/public/index.html

# echo "===== Install dependencies ====="
# cd tcloud
# npm install --only=prod
