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

# Install security tools
brew install gpg2

# TODO: --options [FILE] can read options from file, -a can create ascii armored output
echo "==== Generate RSA key ===="
gpg --full-generate-key
echo "=========================="

echo "====== List GPG RSA key ======"
gpg --list-secret-keys --keyid-format=long
echo "=============================="

# Install github cli
brew install gh

# Login github before add ssh key and gpg key
gh auth login

gh ssh-key add ~/.ssh/id_github.pub
# TODO: find the command line
# gh gpg-key add ~/.gnupg/pubring.kbx
