#!/bin/bash

if ! command -v brew &> /dev/null
then
    echo "brew could not be found; to install check: https://brew.sh/"
    exit 1
fi

LANGS="elm go pypy3.10"
TOOLS="binutils gawk git neovim displayplacer ffmpeg"
MANAGERS="pipx npm"
brew install $LANGS $TOOLS $MANAGERS
brew install --cask icanhazshortcut rectangle visual-studio-code
