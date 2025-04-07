#!/bin/bash
set -e

echo "Installing VS Code..."
brew install --cask visual-studio-code
echo "VS Code installation complete."

# Set Git core.editor to VS Code if available
if command -v code >/dev/null 2>&1; then
  echo "Setting VS Code as the default Git editor..."
  git config --global core.editor "code --wait"
else
  echo "VS Code not detected. Skipping Git editor setup."
fi
