#!/bin/bash -e

# Install Xcode Command Line Tools
if ! xcode-select -p &>/dev/null; then
  echo "Installing Xcode Command Line Tools..."
  xcode-select --install

  # Wait for the installation to complete
  echo "Waiting for Xcode Command Line Tools to finish installing..."
  until xcode-select -p &>/dev/null; do
    sleep 5
  done
  echo "Xcode Command Line Tools installed successfully."
else
  echo "Xcode Command Line Tools already installed."
fi

# Switch to Command Line Tools to avoid node-gyp issues
sudo xcode-select --switch /Library/Developer/CommandLineTools

# Install Rosetta 2 (for Apple Silicon Macs)
if [[ $(uname -m) == "arm64" ]]; then
  if ! softwareupdate --list | grep -q "Rosetta"; then
    echo "Installing Rosetta 2..."
    softwareupdate --install-rosetta --agree-to-license
  else
    echo "Rosetta 2 already installed."
  fi
fi

# Install Homebrew
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

  # Append Homebrew to PATH
  echo "Adding Homebrew to PATH..."
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo "Homebrew already installed."
fi
