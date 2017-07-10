#!/bin/sh

# Update the repos
brew update

# Check the health
brew doctor

# Install developing tools
brew install node
brew install yarn
brew install leiningen
brew install python3

# Install optimized tools
brew install ripgrep

# Install internet tools
brew install nmap

# Install deployment tools/otherCLI
brew install heroku

# brew cask install
###################
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
