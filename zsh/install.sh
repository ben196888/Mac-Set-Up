#!/bin/bash
set -e

echo "Installing essential tools..."
brew install zsh starship font-hack-nerd-font

# Install Oh My Zsh only if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh My Zsh..."
  export RUNZSH=no
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Oh My Zsh is already installed. Skipping..."
fi

echo "Copying .zshrc to home directory..."
cp "$(dirname "$0")/.zshrc" "$HOME/.zshrc"

echo "Zsh setup complete. Run 'exec zsh' or restart your terminal."
