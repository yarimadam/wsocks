#!/bin/bash

# interactive mode
interactive=$1

if [ $interactive == 'interactive' ]
then
    read -p "username@host = " target
    read -p "socks:port = " socks
else
    target=$1
    socks=$2
fi

echo "connecting to $target trough $socks ..."
ssh ${target} -o "ProxyCommand=nc -X 5 -x ${socks} %h %p"