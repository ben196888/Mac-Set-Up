#!/bin/bash
set -e

echo "Installing Go..."
brew install go

# Set up Go workspace
GO_BASE="$HOME/go"
mkdir -p "$GO_BASE/src/github.com/ben196888"

echo "Go setup complete."
