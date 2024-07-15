#!/bin/sh

# Check if the process is running
if pgrep -x "/frps/frps" >/dev/null; then
    echo "frp server is running."
    exit 0  # Exit with status 0 (healthy)
else
    echo "frp server is not running."
    exit 1  # Exit with status 1 (unhealthy)
fi

