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
pip3 install --upgrade pip
curl https://bootstrap.pypa.io/get-pip.py | python
pip3 install virtualenvwrapper
echo "export WORKON_HOME=$HOME/.virtualenvs \
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.4 \
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=' -p /usr/bin/python3.4 ' \
export PROJECT_HOME=$HOME/Devel \
source /usr/bin/virtualenvwrapper.sh " >> ~/.bashrc
mkvirtualenv my_django_environment
pip3 install django
python3 -m django --version


