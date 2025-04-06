#!/bin/bash
set -e

echo "Installing essential tools..."
brew install zsh starship font-hack-nerd-font

echo "Installing Oh My Zsh..."
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Copying .zshrc to home directory..."
cp "$(dirname "$0")/.zshrc" "$HOME/.zshrc"

echo "Zsh setup complete. Run 'exec zsh' or restart your terminal."
