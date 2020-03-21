#!/bin/bash
NVIM=~/.config/nvim
mkdir -p $NVIM/UltiSnips
cp UltiSnips/* $NVIM/UltiSnips
cp init.vim $NVIM/init.vim
nvim -c 'PluginInstall' -c 'qa!'
