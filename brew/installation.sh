#!/bin/sh

# Update the repos
brew update

# Check the health
brew doctor

# Install OpenSSL
brew install openssl

# Install fish
# brew install fish

# Install zsh
brew install zsh

# Install developing tools
brew install node
brew install n
brew install yarn
brew install watchman
brew install python3

# Install golang
mkdir $HOME/Go
mkdir -p $HOME/Go/src/github.com/ben196888
brew install go
brew install glide

# Install xhyve & docker-machine-driver-xhyve
brew install --HEAD xhyve
brew install docker-machine-driver-xhyve
# docker-machine-driver-xhyve need root owner and uid
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

# Install envsubt tool
brew install gettext

# Install optimized tools
#########################
# Install rg to replace grep
brew install ripgrep
# Install command line fuzzy finder
brew install fzf
# Install tree
brew install tree
# Install ack
brew install ack

# Install security tools
brew install gpg2

# Install internet tools
brew install nmap

# Install deployment tools/otherCLI
brew install kubectl
brew install kompose

brew install awscli
brew install heroku
