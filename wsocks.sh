#!/bin/bash
read -p "ssh user: " ssh_user
read -p "ssh host: " ssh_host
read -p "socks host: " socks_host
read -p "socks port: " socks_port

echo "connecting to $ssh_user@$ssh_host..."
ssh ${ssh_user}@${ssh_host} -o "ProxyCommand=nc -X 5 -x ${socks_host}:${socks_port} %h %p"