#!/bin/bash -e

# Install git delta
brew install git-delta

BASEDIR=$(dirname "$0")

cp "$BASEDIR/.gitconfig" "$HOME/.gitconfig"
cp "$BASEDIR/.gitignore_global" "$HOME/.gitignore_global"

ssh-keygen -t ed25519 -C "ben196888@gmail.com" -f "$HOME/.ssh/id_github"
touch ~/.ssh/config
cat <<EOF >> ~/.ssh/config
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_github
EOF
ssh-add --apple-use-keychain ~/.ssh/id_github

echo "==== Add new SSH key in github ===="
cat ~/.ssh/id_github.pub
echo "==================================="
