#!/bin/bash
#
#
sudo mkdir /etc/adobe/

sudo echo "EnableLinuxHWVideoDecode=1" >> /etc/adobe/mms.cfg
sudo echo "OverrideGPUValidation=1" >> /etc/adobe/mms.cfg
exit
