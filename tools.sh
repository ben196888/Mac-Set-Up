#!/bin/bash
set -e

echo "Installing general productivity tools..."

# Cleanup utility
brew install --cask appcleaner

# Music
brew install --cask spotify

# Instant messaging
brew install --cask slack
brew install --cask messenger
brew install --cask signal
brew install --cask discord

# Window manager
brew install --cask rectangle

# Productivity tools
brew install --cask raycast

echo "Other tools installation complete."
