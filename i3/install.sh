#!/bin/bash
sudo apt-get install i3 i3blocks help2man wget

wget -O ~/.config/i3/floral-fractal.jpg https://cdn.suwalls.com/wallpapers/abstract/floral-fractal-17286-2560x1440.jpg

git clone https://github.com/haikarainen/light.git

cd light && sudo make && sudo make install && cd ..

./deploy.sh
