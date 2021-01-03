#!/bin/bash

wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip -q ngrok-stable-linux-amd64.zip

# Install rclone static binary
wget -q https://downloads.rclone.org/v1.51.0/rclone-v1.51.0-linux-amd64.zip
unzip rclone-v1.51.0-linux-amd64.zip -d /app/
export PATH=$PWD/rclone-v1.51.0-linux-amd64:$PATH



echo "===== Unarchive App ====="
unzip web.zip -d /app/

echo "===== Install dependencies ====="
cd /app/tcloud
npm install --only=prod


