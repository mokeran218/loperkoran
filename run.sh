#!/bin/bash
#chmod +x /app/qbittorrent-nox
#chmod +x /app/ngrok
chmod +x /app/rclone-v1.51.0-linux-amd64/rclone
#/app/qbittorrent-nox -d --webui-port=8080
#/app/ngrok authtoken 1mWgRNV3q4PPA0cHULW4KMZ60o8_32oGEZvoNAgBvPRtgjxVQ
#/app/ngrok http 8080

cd tcloud

node server.js

cat << EOF > rclone.sh
#!/bin/bash
DIR="/app/tcloud/files/"
while true; do
    if [ -z "$(ls -A $DIR)" ]; then
        echo "Empty"
    else
        /app/rclone-v1.51.0-linux-amd64/rclone --config /app/rclone-v1.51.0-linux-amd64/rclone.conf move /app/tcloud/files/  Nintoma-muker:hero -vvv --delete-empty-src-dirs --fast-list --tpslimit=5 --transfers=5 --checkers=10 --log-file=/app/rclone.log
    fi

  sleep 5;
done
EOF

