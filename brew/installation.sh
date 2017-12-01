#!/bin/sh

# Update the repos
brew update

# Check the health
brew doctor

# Install fish
brew install fish

# Install developing tools
brew install node
brew install yarn
brew install clojure
brew install leiningen
brew install python3

# Install golang
mkdir $HOME/Go
mkdir -p $HOME/Go/src/github.com/ben196888
brew install go

# Install optimized tools
brew install ripgrep

# Install security tools
brew install gpg2

# Install internet tools
brew install nmap

# Install deployment tools/otherCLI
brew install kubectl
brew install heroku
