#!/bin/bash
set -e

# Run essential setup (Xcode, Rosetta, Homebrew)
source ./essential.sh

# Install cli tools (openSSL, rg, tree, ack, nmap)
./cli_tools.sh
# Setup git config and ssh
./git/install.sh
# Install zsh, oh my zsh, plugins, starship
./zsh/install.sh
# Install terminal apps (warp)
./terminal.sh

# Install rust
./rust/install.sh
# Install Java
./java/install.sh
# Install gui apps through brew cask
./brew-cask/install.sh
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
