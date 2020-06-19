# CleanMinecraftBedrock

## Setup

### On server

```bash
sudo apt install unzip
git clone https://github.com/JeftaDirksen/CleanMinecraftBedrock.git cleanmcbedrock
cd cleanmcbedrock
# Get server url: https://www.minecraft.net/en-us/download/server/bedrock/
wget https://minecraft.azureedge.net/bin-linux/bedrock-server-....zip
unzip -o bedrock-server-....zip -x server.properties permissions.json
# Optional: level-seed=??? and server-port=????? in server.properties
./start
screen -r cleanmcbedrock
```

### In game

```minecraft
/gamemode creative
/tp 0 100 0
/setworldspawn
/gamerule spawnradius 100
/gamerule showcoordinates true
```

## Automate

```bash
crontab -e
  @reboot ~/cleanmcbedrock/start.sh
```
