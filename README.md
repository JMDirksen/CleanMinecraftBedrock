# CleanMinecraftBedrock

## Prerequisites

    sudo apt install -y git screen lynx unzip

## Clone

    git clone https://github.com/JeftaDirksen/CleanMinecraftBedrock.git cleanmcbedrock
    cd cleanmcbedrock

## Download

    mkdir server
    lynx -dump -listonly -nonumbers https://www.minecraft.net/en-us/download/server/bedrock | grep linux/bedrock-server | xargs wget -O server/server.zip
    unzip -o server/server.zip -x server.properties permissions.json -d server

## Configure

    chmod +x server/bedrock_server
    cp server.properties.template server/server.properties
    cp permissions.json.template server/permissions.json
    crontab crontab.template

## Start server

    ./start.sh

## In game

    /gamemode creative
    /tp 0 100 0
    /setworldspawn
    /gamerule spawnradius 100
    /gamerule showcoordinates true

## Backup

    crontab -e
        SHELL=/bin/bash
        0 * * * * rsync -rt --del --password-file=<(echo password) ~/cleanmcbedrock user@host::Backup/
