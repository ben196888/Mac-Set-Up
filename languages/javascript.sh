#!/bin/bash
set -e

echo "Installing Node.js via n..."
brew install n

# Set up permissions for n
sudo mkdir -p /usr/local/n
sudo chown -R "$(whoami)" /usr/local/n

sudo mkdir -p /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
sudo chown -R "$(whoami)" /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share

# Install Node LTS
n lts

# Install global JS tools via npm
npm install -g npm yarn pnpm

echo "Installing Deno..."
curl -fsSL https://deno.land/install.sh | sh

echo "JavaScript environment setup complete."
