#!/bin/bash
#Controlador propietario de Nvidia instalar para Debian 8 Jessie

sudo apt remove xserver-xorg-video-nouveau

sudo apt install -y linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') nvidia-kernel-dkms nvidia-glx nvidia-kernel-common nvidia-xconfig nvidia-settings nvidia-vdpau-driver libgl1-nvidia-glx libgl1-nvidia-glx-i386 libtxc-dxtn-s2tc0 libtxc-dxtn-s2tc-bin libtxc-dxtn-s2tc0:i386 nvidia-cg-toolkit uuid-runtime

sudo nvidia-xconfig
