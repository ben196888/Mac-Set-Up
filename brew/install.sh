#!/bin/sh

function brew_install_or_upgrade {
    if brew ls --versions "$1" >/dev/null; then
        HOMEBREW_NO_AUTO_UPDATE=1 brew upgrade "$1"
    else
        HOMEBREW_NO_AUTO_UPDATE=1 brew install "$1"
    fi
}

# Update the repos
brew update

# Check the health
brew doctor

# Install OpenSSL
brew_install_or_upgrade openssl

# Install fish
# brew_install_or_upgrade fish

# Install zsh
brew_install_or_upgrade zsh

# Install developing tools

# Install Nodejs
brew_install_or_upgrade node
brew_install_or_upgrade n
brew_install_or_upgrade yarn
brew_install_or_upgrade watchman

brew_install_or_upgrade deno

# Install python
brew_install_or_upgrade python3

# Install golang
mkdir $HOME/Go
mkdir -p $HOME/Go/src/github.com/ben196888
brew_install_or_upgrade go
brew_install_or_upgrade glide

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install xhyve & docker-machine-driver-xhyve
brew_install_or_upgrade xhyve
brew_install_or_upgrade docker-machine-driver-xhyve
# docker-machine-driver-xhyve need root owner and uid
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

# Install envsubt tool
brew_install_or_upgrade gettext

# Install optimized tools
#########################
# Install rg to replace grep
brew_install_or_upgrade ripgrep
# Install command line fuzzy finder
brew_install_or_upgrade fzf
# Install tree
brew_install_or_upgrade tree
# Install ack
brew_install_or_upgrade ack
# Install git delta
brew_install_or_upgrade git-delta

# Install security tools
brew_install_or_upgrade gpg2

# Install internet tools
brew_install_or_upgrade nmap

# Install deployment tools/otherCLI
brew_install_or_upgrade kubectl
brew_install_or_upgrade kompose
