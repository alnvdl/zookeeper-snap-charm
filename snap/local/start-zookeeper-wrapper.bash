#!/bin/bash

set -eu

if [ ! -f $SNAP_DATA/zookeeper.properties ]; then
	cp $SNAP/opt/zookeeper/config/zookeeper.properties $SNAP_DATA/zookeeper.properties
fi

export PATH=$SNAP/usr/lib/jvm/default-java/bin:$PATH
export LOG_DIR=$SNAP_DATA/log

$SNAP/opt/zookeeper/bin/zookeeper-server-start.sh $SNAP_DATA/zookeeper.properties
