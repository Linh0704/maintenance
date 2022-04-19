#!/bin/bash

sudo apt update

#core installation
sudo apt-get install python3 unzip wget tmux htop git curl -y

# Ultilities
## Work Utilites
#<---- Chrome ---->
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
rm ./google-chrome-stable_current_amd64.deb

#<---- Slack 4.25.0 64---->
wget https://downloads.slack-edge.com/releases/linux/4.25.0/prod/x64/slack-desktop-4.25.0-amd64.deb
sudo apt install ./slack-desktop-4.25.0-amd64.deb  -y
rm ./slack-desktop-4.25.0-amd64.deb


##<---- VsCode 1.66.2 ---->
wget https://az764295.vo.msecnd.net/stable/dfd34e8260c270da74b5c2d86d61aee4b6d56977/code_1.66.2-1649664567_amd64.deb
sudo apt install ./code_1.66.2-1649664567_amd64.deb -y

## Personal Utilities
#<---- VLC ---->
sudo apt install vlc 

#<---- Spotify ---->
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client  -y
