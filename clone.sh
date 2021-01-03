#!/bin/bash
rclone move "$1" "Nintoma-muker:/Torrents/${2%.*}" --checkers 20 --fast-list -v --tpslimit 20 --transfers 20 --exclude '.unwanted/*' --log-file=/app/rclone.log --delete-empty-src-dirs
