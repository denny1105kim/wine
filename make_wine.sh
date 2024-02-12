#!bin/bash
sudo dpkg --add-architecture i386
sudo apt install -y wget
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt-get update
sudo apt install -y --install-recommends winehq-stable
echo "All wine setting is finished!!! execute winecfg..."
winecfg

