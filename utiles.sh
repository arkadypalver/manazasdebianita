#!/bin/bash
#
# Modernizar Debian 8 jessie


#Remover paquetes inutiles

sudo apt remove -y gnome-chess cheese aisleriot five-or-more four-in-a-row gnome-documents gnome-mahjongg gnome-mines gnome-music gnome-nibbles gnome-photos gnome-robots gnome-sudoku gnome-tetravex lightsoff polari quadrapassel xboard empathy bijiben swell-foop tali vinagre vino hitori iagno gnome-klotski totem totem-common gnome-dictionary gnome-menus gnome-disk-utility xterm gnome-orca gnome-getting-started-docs gnome-user-guide hamster-applet goobox synaptic seahorse tracker

#Poner paquetes más útiles

sudo apt install -y xinit xorg gnome-shell gnome-shell-extensions gdm3 file-roller gedit gedit-plugins eog eog-plugins gnome-calculator gnome-clocks gnome-color-manager gnome-font-viewer gnome-logs gnome-maps gnome-nettool gnome-screenshot gnome-sound-recorder gnome-system-log gnome-system-monitor gnome-tweak-tool dconf-editor rhythmbox rhythmbox-plugins simple-scan transmission-gtk gimp inkscape vlc mypaint pinta krita rawtherapee blender synfigstudio audacity ardour3 pitivi easytag filezilla brasero brasero-cdrkit gparted virtualbox virtualbox-dkms flashplugin-nonfree openjdk-7-jdk openjdk-7-jre icedtea-7-plugin evolution gnome-contacts soundconverter libreoffice libreoffice-avmedia-backend-gstreamer libreoffice-calc libreoffice-draw libreoffice-evolution libreoffice-gnome libreoffice-gtk libreoffice-impress libreoffice-report-builder-bin pepperflashplugin-nonfree gksu mpv && sudo apt remove libuim-data libuim-custom2 libuim-scm0

# Instalar Chrome

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Update

sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

sudo apt install google-chrome-stable && sudo apt remove iceweasel

sudo dpkg-reconfigure locales

sudo gedit /etc/inputrc

#Si la línea “set convert-meta off” tiene un “# ” delante, lo borramos.

sudo gedit /etc/environment


