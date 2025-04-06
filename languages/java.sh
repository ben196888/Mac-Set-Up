#!/bin/bash
set -e

# Install SDKMAN if not already installed
if [ ! -d "$HOME/.sdkman" ]; then
  echo "Installing SDKMAN..."
  curl -s "https://get.sdkman.io" | bash
else
  echo "SDKMAN already installed."
fi
