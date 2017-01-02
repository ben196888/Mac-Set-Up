#!/bin/sh

# Update the repos
brew update

# Check the health
brew doctor

# Install developing tools
brew install node
brew install yarn

# Install deployment tools/otherCLI
brew install heroku
