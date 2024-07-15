#!/bin/sh

config_file="/etc/shadowsocksr/config.json"
backup_file="/root/shadowsocksr-3.2.2/config.json"

if [ ! -f "$config_file" ]; then
    cp "$backup_file" /etc/shadowsocks-r
fi

python /root/shadowsocksr-3.2.2/shadowsocks/server.py -c /etc/shadowsocksr/config.json

# 保持容器运行状态
tail -f /dev/null
