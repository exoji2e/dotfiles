#!/bin/bash
mkdir -p ~/.config
mkdir -p ~/.config/fish
mkdir -p ~/.config/fish/functions
cp -r functions/* ~/.config/fish/functions
cp config.fish ~/.config/fish/
