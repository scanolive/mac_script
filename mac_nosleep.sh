#!/bin/bash

#################################################
#
#   File Name: mac_nosleep.sh
#   Author: scan
#   Created Time: Wed Jul 16 19:03:45 2019
# 
#################################################


if [[ `ps -ef|grep caffeinate|wc -l` -eq 1 ]];then
	nohup /usr/bin/caffeinate -s > /dev/null  2>&1 &  
fi
sudo pmset -a  standbydelay 28800
sudo pmset -a  standby 0
sudo pmset -a  networkoversleep 1
sudo pmset -a  sleep 0 
sudo pmset -a  hibernatemode 0
sudo pmset -a  autopoweroff 0 
sudo pmset -a  acwake 1
