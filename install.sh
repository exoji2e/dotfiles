#!/bin/bash
SH="tmux"
VC="git"
ED="vim"
ETC="make"
LANG="openjdk-8-jdk pypy scala"
APPS="telegram-desktop"
LATEX="texlive-latex-extra texlive-fonts-recommended"

sudo apt-get update
sudo apt-get upgrade
sudo apt-get update
sudo apt-get upgrade

cd nvim && ./install.sh && cd ..
cd fish && ./install.sh && cd ..

sudo apt-get install $SH $VC $LANG $APPS $LATEX

echo "uncomment to set name and email in gitconfig"
# git config --global user.name "Måns Magnusson"
# git config --global user.email "exoji2e@gmail.com"
