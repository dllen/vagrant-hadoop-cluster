#!/bin/bash

echo "$(hostname): init ..."

mkdir -p /home/vagrant/.pip/
echo -e "[global]\nindex-url = http://pypi.douban.com/simple" >> /home/vagrant/.pip/pip.conf
echo -e "[install]\ntrusted-host = pypi.douban.com" >> /home/vagrant/.pip/pip.conf

# 163
sudo cat /vagrant/sources.list.precise > /etc/apt/sources.list

sudo apt-get update


