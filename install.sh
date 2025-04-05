#!/bin/bash -e

# Run essential setup (Xcode, Rosetta, Homebrew)
./essential.sh

# Install rust
./rust/install.sh
# Install Java
./java/install.sh
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
# Install deno
./deno/install.sh
# Install python, packages and clis
./python/install.sh
# Instll latex
./latex/install.sh
# Install go
./go/install.sh
