#!/bin/bash
#
#
sudo apt install -y gtk2-engines-pixbuf gtk2-engines-murrine autoconf automake pkg-config libgtk-3-dev git

git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme

./autogen.sh --prefix=/usr

sudo make install
