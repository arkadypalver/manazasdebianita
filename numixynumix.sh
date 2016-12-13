#!/bin/bash

cd ~/

git clone https://github.com/numixproject/numix-icon-theme-circle.git

git clone https://github.com/numixproject/numix-icon-theme.git

sudo mv numix-icon-theme-circle/Numix-Circle/ /usr/share/icons

sudo mv numix-icon-theme-circle/Numix-Circle-Light /usr/share/icons

sudo mv numix-icon-theme/Numix /usr/share/icons

sudo mv numix-icon-theme/Numix-Light /usr/share/icons

gtk-update-icon-cache /usr/share/icons/Numix-Circle/

gtk-update-icon-cache /usr/share/icons/Numix-Circle-Light/

gtk-update-icon-cache /usr/share/icons/Numix/

gtk-update-icon-cache /usr/share/icons/Numix-Light/
