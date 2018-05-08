#!/bin/bash
sudo apt-get install i3 i3blocks help2man wget

WALLP=floral-fractal

wget -O $WALLP.jpg https://cdn.suwalls.com/wallpapers/abstract/floral-fractal-17286-2560x1440.jpg
mogrify -format png $WALLP.jpg 
rm $WALLP.jpg

if [ ! -d "light" ]; then
    git clone https://github.com/haikarainen/light.git
else
    cd light && git pull && cd ..
fi

cd light && sudo make && sudo make install && cd ..

./deploy.sh
