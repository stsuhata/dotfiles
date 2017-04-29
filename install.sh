#!/bin/bash

DOTSHOME=$HOME/.dotfiles

mkdir $DOTSHOME

cp tmux.conf $DOTSHOME
cp zshrc $DOTSHOME
cp vimrc $DOTSHOME

ln -s $DOTSHOME/tmux.conf ~/.tmux.conf
ln -s $DOTSHOME/zshrc ~/.zshrc
ln -s $DOTSHOME/vimrc ~/.vimrc

# tmux script
mkdir $HOME/.tmux
mkdir $HOME/.tmux_log
cp tmux/*.sh $HOME/.tmux/

