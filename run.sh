#!/bin/bash
chmod +x /app/qbittorrent-nox
/app/qbittorrent-nox -d --webui-port=8080

cd tcloud

node server.js


