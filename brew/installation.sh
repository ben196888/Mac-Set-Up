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

# Install docker-machine-driver-xhyve
brew install docker-machine-driver-xhyve
# docker-machine-driver-xhyve need root owner and uid
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

# Install optimized tools
brew install ripgrep

# Install security tools
brew install gpg2

# Install internet tools
brew install nmap

# Install deployment tools/otherCLI
brew install kubectl
brew install heroku
