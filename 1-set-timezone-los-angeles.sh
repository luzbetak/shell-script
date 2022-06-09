#!/bin/bash
#-------------------------------------------------------------#
# Set Timezone to Los Angeles
#-------------------------------------------------------------#
apt-get install ntp

service ntp start
service ntp enable
service ntp restart
service ntp status

#-------------------------------------------------------------#
mv /etc/localtime /etc/localtime.bak
ln -s /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
#-------------------------------------------------------------#
