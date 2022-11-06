#! /usr/bin/env bash

. config.sh

wget -c https://muwire.com/downloads/I2P-$I2P_VERSION.dmg
wget -c https://muwire.com/downloads/I2P-arm64-$I2P_VERSION.dmg

export http_proxy=http://127.0.0.1:4444
http_proxy=http://127.0.0.1:4444
wget -w 30 -c -r -np http://stats.i2p/i2p/$I2P_VERSION/

#if you want to make a MuWire mirror, uncomment this too.
#unset http_proxy
#wget -w 30 -c -r -np https://muwire.com/downloads/