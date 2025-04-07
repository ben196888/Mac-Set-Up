#!/bin/bash
set -e

echo "Installing browsers..."

brew install --cask firefox
brew install --cask google-chrome
brew install --cask microsoft-edge
brew install --cask duckduckgo

echo "Setting Firefox as the default browser..."
brew install defaultbrowser
defaultbrowser firefox

echo "Browsers installation complete."
