#!/bin/bash
set -e

# Install Rust using rustup if not already installed
if ! command -v rustup >/dev/null 2>&1; then
  echo "Installing Rust..."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
else
  echo "Rust is already installed."
fi

echo "Rust setup complete."
