# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "hashicorp/precise64"

  config.vm.box_check_update = false

  config.vm.provision :shell, path: 'init.sh'

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true
  config.vm.provision :hostmanager

  config.vm.define :master do |node|
    node.vm.hostname = "master"
    node.vm.network :private_network, ip: "10.211.55.100"
    node.vm.provision :shell, inline: <<-SHELL
      sudo apt-get install -y hadoop-yarn-resourcemanager hadoop-hdfs-namenode hadoop-mapreduce-historyserver hadoop-yarn-proxyserver
      sudo apt-get install -y hadoop-client
      sudo apt-get install -y hadoop-lzo
    SHELL
  end

  config.vm.define :slave1 do |node|
    node.vm.hostname = "slave1"
    node.vm.network :private_network, ip: "10.211.55.101"
    node.vm.provision :shell, inline: <<-SHELL
      sudo apt-get install -y hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce
      sudo apt-get install hadoop-hdfs-secondarynamenode
      sudo apt-get install -y hadoop-lzo
    SHELL
  end

  config.vm.define :slave2 do |node|
    node.vm.hostname = "slave2"
    node.vm.network :private_network, ip: "10.211.55.102"
    node.vm.provision :shell, inline: <<-SHELL
      sudo apt-get install -y hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce
      sudo apt-get install -y hadoop-lzo
    SHELL
  end

  config.vm.define :slave3 do |node|
    node.vm.hostname = "slave3"
    node.vm.network :private_network, ip: "10.211.55.103"
    node.vm.provision :shell, inline: <<-SHELL
      sudo apt-get install -y hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce
      sudo apt-get install -y hadoop-lzo
    SHELL
  end

end
