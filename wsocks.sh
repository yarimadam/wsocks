#!/bin/bash
read -p "ssh user: " ssh_user
read -p "ssh host: " ssh_host

echo "connecting to $ssh_user@$ssh_host..."
ssh ${ssh_user}@${ssh_host} -o "ProxyCommand=nc -X 5 -x 127.0.0.1:8527 %h %p"