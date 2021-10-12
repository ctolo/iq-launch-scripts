#!/bin/bash

pid=`ps aux | grep nexus-iq-server | grep '.jar server' | grep -vE '(stop|grep)' | awk '{print $2}'`
kill $pid
echo "Stopping nexus-iq-server - PID $pid"

