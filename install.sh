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
# Install git
./git/install.sh
# Install zsh, oh my zsh, plugins, starship
./zsh/install.sh
# Install node, yarn, all global tools
./node/install.sh
# Install python, packages and clis
./python/install.sh
# Instll latex
./latex/install.sh
# Install Java
./java/install.sh
# Install go
./go/install.sh
# Install rust
./rust/install.sh
