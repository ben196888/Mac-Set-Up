#!/bin/sh

BASEDIR=$(dirname "$0")

cp "$BASEDIR/.gitconfig" "$HOME/.gitconfig" &&
cp "$BASEDIR/.gitignore_global" "$HOME/.gitignore_global" &&
cp "$BASEDIR/.zshrc" "$HOME/.zshrc"
