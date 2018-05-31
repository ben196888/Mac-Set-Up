#!/bin/sh

# Install Xcode Command Line Tools
xcode-select --install
# node-gyp rebuild issue. Enable command lint tools and ignore the warnings.
sudo xcode-select --switch /Library/Developer/CommandLineTools

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install gui apps through brew cask
cd brew-cask
./installation.sh
cd ..

# Install cmd line tools through brew
cd brew
./installation.sh
cd ..

# Install node global modules
cd node
./installation.sh
cd ..

# Install python packages and clis
cd python
./installation.sh
cd ..

# Install atom packages and themes
cd atom
./installation.sh
cd ..

# Setup fish
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
mkdir -p ~/.config/fish
touch ~/.config/fish/config.fish
