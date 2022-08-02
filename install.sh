#!/usr/bin/env sh

[ -e $HOME/.zshrc ]    || ln -s $PWD/zsh/.zshrc $HOME/.zshrc
[ -e $HOME/.zprofile ] || ln -s $PWD/zsh/.zprofile $HOME/.zprofile
