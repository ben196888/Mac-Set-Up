#!/bin/sh -e

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

# Install internet tools
brew_install_or_upgrade nmap
