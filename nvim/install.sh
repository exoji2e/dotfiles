#!/bin/bash
sudo apt-get install nvim
mkdir -p ~/.config/nvim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
./deploy.sh
