#!/bin/bash

# System
apt-get clean autoclean autoremove -y
journalctl --vacuum-time=10d

# Docker
if [ $(docker images -f dangling=true -q) ]
then
    docker rmi $(docker images -f dangling=true -q) --force
fi
