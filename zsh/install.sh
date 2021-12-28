#!/bin/sh

# Install zsh
brew install zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install prerequie
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# Install starship theme
brew install starship

BASEDIR=$(dirname "$0")

cp "$BASEDIR/.zshrc" "$HOME/.zshrc"
