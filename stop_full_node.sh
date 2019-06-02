#!/bin/bash
while true; do
  pid=`ps -ef |grep FullNode.jar |grep -v grep |awk '{print $2}'`
  if [ -n "$pid" ]; then
    kill -15 $pid
    echo "The FullNode process is exiting, it may take some time, forcing the exit may cause damage to the database, please wait patiently..."
    sleep 1
  else
    echo "FullNode killed successfully!"
    break
  fi
done