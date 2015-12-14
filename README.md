# vagrant-hadoop-cluster

This is a hadoop 2.6.0 cluster setup config using vagrant. You can setup your own hadoop cluster.

# Usage

## prepare

1. install vagrant and virtualbox

2. download hadoop-2.6.0 binary relase and jdk 64-bit 1.7 or later, and extract in the root directory, then modify the environment JAVA_HOME and HADOOP_HOME in env.sh according to the java and hadoop real path

3. (optional) you can modify config.vm.box, just need ubuntu 64-bit

4. (optional) ATTENTION: modify the vm memory according to your PC

```ruby
# just a example
config.vm.define :example do |node|
  node.vm.hostname = "example"

  node.vm.provider :virtualbox do |v|
    v.cpus = 1
    v.memory = 2048  # modify here
  end
end
```

## start

install vagrant-hostmanager

```bash
$ vagrant plugin install vagrant-hostmanager
```

start machines

```bash
$ vagant up
```

start cluster

```bash
$ control start
```

*Attention: control is a alias for control.sh.*

Enjoy it!
