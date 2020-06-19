#!/bin/bash
cd "$(dirname "$0")"

while true
do
  ./bedrock_server
  echo 'Press Ctrl-C to stop'
  sleep 30
done
