#!/bin/bash

echo "$(hostname): init ..."

#mkdir -p /home/vagrant/.pip/
#echo -e "[global]\nindex-url = http://pypi.douban.com/simple" >> /home/vagrant/.pip/pip.conf
#echo -e "[install]\ntrusted-host = pypi.douban.com" >> /home/vagrant/.pip/pip.conf
#
## 163
#sudo cat /vagrant/resources/sources.list.precise > /etc/apt/sources.list
#sudo apt-get update

echo 'source /vagrant/env.sh' >> /home/vagrant/.bashrc

# clean hosts
cat > /etc/hosts <<EOF
127.0.0.1       localhost

# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters

EOF

cat > /home/vagrant/.bash_profile <<EOF
#!/bin/bash

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
EOF

