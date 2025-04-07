#!/bin/bash
set -e

echo "Installing developer tools..."

# OrbStack (Docker + Linux VM)
brew install --cask orbstack

# kubectl (Kubernetes CLI)
brew install kubectl

# Postman
brew install --cask postman

# Google Cloud SDK
brew install --cask google-cloud-sdk

# Cursor (AI code editor)
brew install --cask cursor

# ChatGPT desktop app (OpenAI)
brew install --cask chatgpt

echo "Developer tools installation complete."
