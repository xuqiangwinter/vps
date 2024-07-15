#!/bin/sh

config_file="/frps/config/frps.toml"
backup_file="/root/frps.toml"

if [ ! -f "$config_file" ]; then
    mv "$backup_file" /frps/config
else
    if [ -f "$backup_file" ]; then
        rm "$backup_file"
    fi
fi

/frps/frps -c /frps/config/frps.toml

# 保持容器运行状态
tail -f /dev/null
