#!/bin/bash

function init
{
    # init
    $HADOOP_PREFIX/bin/hdfs namenode -format hadoop-cluster
}

function start
{
    # start
    $HADOOP_PREFIX/sbin/start-dfs.sh
    $HADOOP_PREFIX/sbin/start-yarn.sh
    $HADOOP_YARN_HOME/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR start proxyserver
    $HADOOP_PREFIX/sbin/mr-jobhistory-daemon.sh --config $HADOOP_CONF_DIR start historyserver
}

function stop
{
    # stop
    $HADOOP_PREFIX/sbin/stop-dfs.sh
    $HADOOP_PREFIX/sbin/stop-yarn.sh
    $HADOOP_YARN_HOME/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR stop proxyserver
    $HADOOP_PREFIX/sbin/mr-jobhistory-daemon.sh --config $HADOOP_CONF_DIR stop historyserver
}

option=${1:-"default"}

case ${option} in
    init)
        init
        ;;
    start)
        start
        ;;
    stop)
        stop
        ;;
    restart)
        stop
        start
        ;;
    *)
        echo "usage: $0 init|start|stop|restart"
        ;;
esac

