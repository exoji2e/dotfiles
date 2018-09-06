#!/bin/bash
NVIM=~/.config/nvim
mkdir -p $NVIM/UltiSnips
cp UltiSnips/* $NVIM/UltiSnips
nvim -c 'PluginInstall' -c 'qa!'
cp init.vim $NVIM/init.vim
