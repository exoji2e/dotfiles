#!/bin/bash
sudo apt-get install neovim
NVIM=~/.config/nvim
mkdir -p $NVIM/bundle
if [ ! -d "$NVIM/bundle/Vundle.vim" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git $NVIM/bundle/Vundle.vim
fi
./deploy.sh
