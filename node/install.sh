#!/bin/sh

# Replace node with n due to homebrew and n are using different root folder
# install n for node version management
brew install n
# make cache folder (if missing) and take ownership
sudo mkdir -p /usr/local/n
sudo chown -R $(whoami) /usr/local/n
# make sure the required folders exist (safe to execute even if they already exist)
sudo mkdir -p /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
# take ownership of Node.js install destination folders
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share

# Install node lts
n lts

brew install yarn
brew install watchman
brew install deno

# Upgrade npm
npm install -g npm
