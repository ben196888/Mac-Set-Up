#!/bin/bash

xcode-select --install || true && # Install Xcode Command Line Tools
sudo xcode-select --switch /Library/Developer/CommandLineTools && # node-gyp rebuild issue. Enable command lint tools and ignore the warnings.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" && # Install Homebrew
./brew/install.sh && # Install cmd line tools through brew
./brew-cask/install.sh && # Install gui apps through brew cask
./zsh/install.sh && # Install zsh, oh my zsh
./node/install.sh && # Install node global modules
./python/install.sh && # Install python packages and clis
./rust/install.sh && # Install rust
./fonts/install.sh && # Install powerline fonts
./dotfiles/install.sh # set up all dotfiles
