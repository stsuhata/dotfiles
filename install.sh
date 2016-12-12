#!/bin/bash

DOTSHOME=$HOME/.dotfiles

mkdir $DOTSHOME

cp tmux.conf $DOTSHOME
cp zshrc $DOTSHOME

ln -s .$DOTSHOME/tmux.conf ~/.tmux.conf
ln -s .$DOTSHOME/zshrc ~/.zshrc

