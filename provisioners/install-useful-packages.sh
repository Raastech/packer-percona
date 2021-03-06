#!/bin/bash

echo "Installing useful packages"

if [ -x /usr/bin/yum ]; then
	yum localinstall -y http://mirror.sfo12.us.leaseweb.net/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
	yum install -y puppet screen telnet unzip lsof ntp ntpdate wget sysstat bind-utils dkms htop

elif [ -x /usr/bin/apt-get ]; then
	apt-get install puppet screen telnet unzip lsof ntp ntpdate wget sysstat bind-utils -y
else
	echo -n "Unhandled OS: "
	cat /etc/issue
fi
