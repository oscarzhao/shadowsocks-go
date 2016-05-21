#!/bin/sh

echo "Starting Shadowsocks Server..."
echo "Use password $PASSWORD"
/sserver -k $PASSWORD -p 2016
