#!/bin/bash

CURRENT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)

# java
export JAVA_HOME=${CURRENT_DIR}/jdk1.8.0_91
export PATH=${JAVA_HOME}/bin:${PATH}

# hadoop
export HADOOP_HOME=${CURRENT_DIR}/hadoop-2.6.0
export HADOOP_PREFIX=${HADOOP_HOME}
export HADOOP_YARN_HOME=${HADOOP_HOME}
export HADOOP_HDFS_HOME=${HADOOP_HOME}
export HADOOP_COMMON_HOME=${HADOOP_HOME}
export HADOOP_CONF_DIR=${CURRENT_DIR}/config/hadoop
export YARN_CONF_DIR=${CURRENT_DIR}/config/hadoop
export PATH=${HADOOP_HOME}/bin:${PATH}

# maven
export M2_HOME=${CURRENT_DIR}/env/apache-maven-3.3.9
export PATH=${M2_HOME}/bin:${PATH}
export MAVEN_OPTS="-Dmaven.artifact.threads=32 -Xmx1g -XX:MaxPermSize=512M -XX:ReservedCodeCacheSize=512m"

# hive
export HIVE_HOME=${CURRENT_DIR}/apache-hive-2.1.1
export PATH=${HIVE_HOME}/bin:${PATH}

alias control='/vagrant/control.sh'
