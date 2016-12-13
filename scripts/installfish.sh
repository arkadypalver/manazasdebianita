#!/bin/bash
#exectute as root
echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/2/Debian_8.0/ /' >> /etc/apt/sources.list.d/fish.list
wget http://download.opensuse.org/repositories/shells:fish:release:2/Debian_8.0/Release.key
apt-key add - < Release.key
apt update && apt upgrade
