#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Symlink .bashrc
ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"

# Symlink .zshrc
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

# Ensure .ssh directory exists
mkdir -p "$HOME/.ssh"

# Symlink SSH config
ln -sf "$DOTFILES_DIR/ssh/config" "$HOME/.ssh/config"

echo "Symlinks created for .bashrc, .zshrc, and ~/.ssh/config."
