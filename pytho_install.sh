#!/bin/bash
yum update -y
yum -y install yum-utils
yum -y groupinstall development
yum -y install https://centos7.iuscommunity.org/ius-release.rpm
yum makecache
yum -y install python34u  python34u-pip
python3.6 -v
echo "alias python=/usr/bin/python3.4" >> ~/.bash_profile
source ~/.bash_profile
