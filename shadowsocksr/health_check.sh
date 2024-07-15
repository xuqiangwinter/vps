#!/bin/sh

# custom health check for ShadowsocksR

ssr_pid=$(pgrep -f "shadowsocksr")

if [ -z "$ssr_pid" ]; then
    echo "ShadowsocksR is not running..."
    exit 1
else
    echo "ShadowsocksR is running..."
    exit 0
fi
