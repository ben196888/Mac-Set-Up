#!/bin/bash
set -e

echo "Installing Tectonic..."
brew install tectonic

echo "Installing latexindent (for VS Code formatting)..."
brew install latexindent

echo "LaTeX setup complete."
