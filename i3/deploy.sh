#!/bin/bash

# 200ms before repeat, 30 repeats per second
cp config ~/.config/i3/config
cp i3blocks.conf ~/.i3blocks.conf
i3-msg restart

