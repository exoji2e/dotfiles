#!/bin/bash
#sudo apt-get install fish xclip
echo "Change shell to fish?"
chsh -s `which fish`
./deploy.sh
