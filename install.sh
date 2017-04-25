#!/bin/sh
DOTPATH=$HOME/.dotfiles
ln -sfnv $DOTPATH/bash_profile $HOME/.bash_profile
ln -sfnv $DOTPATH/bashrc $HOME/.bashrc
ln -sfnv $DOTPATH/gitignore_global $HOME/.gitignore_global
ln -sfnv $DOTPATH/tmux.conf $HOME/.tmux.conf
ln -sfnv $DOTPATH/vimrc $HOME/.vimrc
