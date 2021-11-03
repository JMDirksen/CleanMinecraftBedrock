# CleanMinecraftBedrock

## Prerequisites

    sudo apt install -y git screen cron unzip

## Setup/Configure/Update/Start

    git clone https://github.com/JeftaDirksen/CleanMinecraftBedrock.git cleanmcbedrock
    cd cleanmcbedrock
    mkdir server
    cp server.properties.template server/server.properties
    cp permissions.json.template server/permissions.json
    crontab crontab.template
    ./update.sh

## In game

    /gamemode creative
    /tp 0 100 0
    /setworldspawn
    /gamerule spawnradius 100
    /gamerule showcoordinates true
