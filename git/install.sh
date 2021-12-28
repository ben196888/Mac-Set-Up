#!/bin/bash -e

# Install git delta
brew install git-delta

BASEDIR=$(dirname "$0")

cp "$BASEDIR/.gitconfig" "$HOME/.gitconfig"
cp "$BASEDIR/.gitignore_global" "$HOME/.gitignore_global"
