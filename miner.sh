#!/bin/bash

while [ 1 ]; do
  miner=`ps -ef | grep ethcoreminer | grep -v grep  -c`
  if [ $miner -eq 0 ]; then
      cmd="/root/quai-gpu-miner/build/ethcoreminer/ethcoreminer -G -P stratum://$1:$2"
      echo "$(date +%Y-%m-%d) $(date +%H:%M:%S) 重启了Miner" >> "miner.log"
      eval $cmd
  fi
  sleep 3

done