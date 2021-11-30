#!/bin/bash -e

# Install Xcode Command Line Tools
xcode-select --install || true

# node-gyp rebuild issue. Enable command lint tools and ignore the warnings.
sudo xcode-select --switch /Library/Developer/CommandLineTools
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# Install cmd line tools through brew
./brew/install.sh
# Install gui apps through brew cask
./brew-cask/install.sh
# Install zsh, oh my zsh
./zsh/install.sh
# Install node global modules
./node/install.sh
# Install python packages and clis
./python/install.sh
# Install rust
./rust/install.sh
# Install powerline fonts
./fonts/install.sh
# set up all dotfiles
./dotfiles/install.sh
