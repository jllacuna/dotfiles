#!/usr/bin/env sh

# Install homebrew
# https://brew.sh/
which brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Update homebrew
brew update

# Upgrade casks and formulae
brew upgrade

# Install programs
brew list tmux  || brew install tmux
brew list watch || brew install watch

# Install Hack nerd font
# https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
brew tap homebrew/cask-fonts
brew list font-hack-nerd-font || brew install --cask font-hack-nerd-font
