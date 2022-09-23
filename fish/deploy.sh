#!/bin/bash
cd $(dirname "$0")


mkdir -p ~/.config
mkdir -p ~/.config/backup
[ -d ~/.config/fish ] && cp -r ~/.config/fish ~/.config/backup/

mkdir -p ~/.config/fish

[ -d ~/.config/fish/functions ] && rm -r ~/.config/fish/functions
ln -s $PWD/functions ~/.config/fish/functions
[ -f ~/.config/fish/config.fish ] && rm ~/.config/fish/config.fish
if [ "$(uname)" == "Darwin" ]; then
    ln -s $PWD/config_macos.fish ~/.config/fish/config.fish
else
    ln -s $PWD/config.fish ~/.config/fish/config.fish
fi
