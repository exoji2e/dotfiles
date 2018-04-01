#!/bin/bash
NVIM=~/.config/nvim
cp init.vim $NVIM/init.vim
mkdir -p $NVIM/UltiSnips
cp UltiSnips/* $NVIM/UltiSnips
nvim -c 'PluginInstall' -c 'qa!'
