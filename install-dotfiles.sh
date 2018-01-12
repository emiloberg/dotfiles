#!/usr/bin/env bash

echo "Running"

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Symlinking dotfiles to home directory."
ln -sfv "$CURRENT_DIR/.gitconfig" ~
ln -sfv "$CURRENT_DIR/.gitignore_global" ~
ln -sfv "$CURRENT_DIR/.phoenix.js" ~
ln -sfv "$CURRENT_DIR/.zshrc" ~
ln -sfv "$CURRENT_DIR/.vimrc" ~
mkdir -p ~/.config/karabiner && ln -sfv "$CURRENT_DIR/karabiner.json" ~/.config/karabiner

echo "I am done!"
