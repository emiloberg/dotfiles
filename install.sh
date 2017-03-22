#!/usr/bin/env bash

echo "Running"

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Symlinking dotfiles to home directory."
ln -sfv "$CURRENT_DIR/.gitconfig" ~
ln -sfv "$CURRENT_DIR/.gitignore_global" ~
ln -sfv "$CURRENT_DIR/.phoenix.js" ~
ln -sfv "$CURRENT_DIR/.zshrc" ~

echo "I am done!"