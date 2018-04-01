#!/bin/bash
NVIM=~/.config/nvim
cp init.vim $NVIM/init.vim
cp -r UltiSnips $NVIM/UltiSnips
nvim -c 'PluginInstall' -c 'qa!'
