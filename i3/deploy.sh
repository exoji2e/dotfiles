#!/bin/bash

mkdir -p ~/.config
mkdir -p ~/.config/i3

I3=~/.config/i3
cp config $I3/config
cp i3blocks.conf ~/.i3blocks.conf
cp floral-fractal.png $I3/floral-fractal.png
i3-msg restart

