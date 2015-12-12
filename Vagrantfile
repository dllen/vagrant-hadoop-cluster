# -*- mode: ruby -*-
# vi: set ft=ruby :

$clean_hosts_script = <<SCRIPT
SCRIPT

Vagrant.configure(2) do |config|

  config.vm.box = "hashicorp/precise64"

  config.vm.box_check_update = false


  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  config.vm.provision :shell, path: 'init.sh'
  config.vm.provision :hostmanager

  config.vm.define :master do |node|
    node.vm.hostname = "master"
    node.vm.network :private_network, ip: "10.211.55.100"
    node.vm.provision :shell, inline: <<-SHELL
      cp /vagrant/resources/id_rsa /home/vagrant/.ssh
      cp /vagrant/resources/id_rsa.pub /home/vagrant/.ssh
      sudo chown vagrant /home/vagrant/.ssh/id_rsa
      sudo chgrp vagrant /home/vagrant/.ssh/id_rsa
      cat /vagrant/resources/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
    SHELL
    node.vm.provider :virtualbox do |v|
      v.cpus = 1
      v.memory = 2048
    end
  end

  config.vm.define :slave1 do |node|
    node.vm.hostname = "slave1"
    node.vm.network :private_network, ip: "10.211.55.101"
    node.vm.provision :shell, inline: <<-SHELL
      cat /vagrant/resources/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
    SHELL
    node.vm.provider :virtualbox do |v|
      v.cpus = 1
      v.memory = 2048
    end
  end

  config.vm.define :slave2 do |node|
    node.vm.hostname = "slave2"
    node.vm.network :private_network, ip: "10.211.55.102"
    node.vm.provision :shell, inline: <<-SHELL
      cat /vagrant/resources/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
    SHELL
    node.vm.provider :virtualbox do |v|
      v.cpus = 1
      v.memory = 2048
    end
  end

  config.vm.define :slave3 do |node|
    node.vm.hostname = "slave3"
    node.vm.network :private_network, ip: "10.211.55.103"
    node.vm.provision :shell, inline: <<-SHELL
      cat /vagrant/resources/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
    SHELL
    node.vm.provider :virtualbox do |v|
      v.cpus = 1
      v.memory = 2048
    end
  end

end
