#!/bin/bash
cd "$(dirname "$0")"
touch "server/stop"
screen -S "cleanmcbedrock" -p 0 -X stuff "stop^M"
while screen -list | grep -q "cleanmcbedrock"
do
    sleep 1
done
[ -f "server/stop" ] && rm "server/stop"
