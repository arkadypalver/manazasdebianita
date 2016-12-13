#!/bin/bash
# After install debian 8
# TO-DO

echo "UPGRADING"

sudo apt update && sudo apt upgrade

#Herramientas

sudo apt install -y preload wget nano git mercurial make pulseaudio libcanberra-pulse mpg123 libldap-2.4-2 libpulse0 libxml2 giflib-tools libpng3 libc6 gtk2-engines gcc gcc-multilib g++ g++-multilib cmake gtk+2.0 gtk+3.0 lm-sensors hddtemp

#Compresión y descompresión

sudo apt install -y rar unrar p7zip p7zip-full p7zip-rar unace zip unzip bzip2 arj lhasa lzip xz-utils

#Códecs

sudo apt install -y ffmpeg2theora ffmpegthumbnailer gstreamer0.10-plugins-base gstreamer0.10-plugins-good gstreamer0.10-plugins-bad gstreamer0.10-plugins-ugly gstreamer0.10-fluendo-mp3 gstreamer0.10-alsa gstreamer0.10-pulseaudio gstreamer1.0-clutter gstreamer1.0-plugins-base gstreamer1.0-nice gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-fluendo-mp3 gstreamer1.0-alsa gstreamer1.0-pulseaudio gstreamer1.0-libav gstreamer1.0-vaapi libmatroska

#Soporte DVDs

sudo apt install -y lsdvd libdvbpsi9 libdvdread4 libdvdnav4

#Tipografías adicionales

sudo apt install -y fonts-cantarell fonts-liberation fonts-noto ttf-mscorefonts-installer ttf-dejavu fonts-stix otf-stix fonts-oflb-asana-math fonts-mathjax

wget https://github.com/adobe-fonts/source-code-pro/archive/1.017R.zip && unzip 1.017R.zip && sudo mv source-code-pro-1.017R/OTF/*.otf /usr/local/share/fonts/ && fc-cache -f -v && rm 1.017R.zip && rm -Rf source-code-pro-1.017R

#Paquetes de 32 bits (solo para los de 64 bits)

sudo dpkg --add-architecture i386

sudo apt update

sudo apt install -y binutils-multiarch libstdc++6:i386 libgcc1:i386 zlib1g:i386 libncurses5:i386 libcanberra-pulse:i386 libldap-2.4-2:i386 libpulse0:i386 libxml2:i386 libpng3:i386

