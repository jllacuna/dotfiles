#!/usr/bin/env sh

# zsh
[ -e $HOME/.zshrc ]    || ln -s $PWD/zsh/.zshrc $HOME/.zshrc
[ -e $HOME/.zprofile ] || ln -s $PWD/zsh/.zprofile $HOME/.zprofile

# ssh
mkdir -p $HOME/.ssh/conf.d
[ -e $HOME/.ssh/config ] || ln -s $PWD/ssh/config $HOME/.ssh/config

# git
giturl=`cat git/gitmessage.url`
sed "s|<url>|$giturl|" git/gitmessage.template > git/.gitmessage

[ -e $HOME/.gitconfig ]      || ln -s $PWD/git/.gitconfig $HOME/.gitconfig
[ -e $HOME/.gitconfig.user ] || ln -s $PWD/git/.gitconfig.user $HOME/.gitconfig.user
[ -e $HOME/.gitmessage ]     || ln -s $PWD/git/.gitmessage $HOME/.gitmessage

# tmux
[ -e $HOME/.tmux.conf ] || ln -s $PWD/tmux/.tmux.conf $HOME/.tmux.conf

./install/brew.sh
