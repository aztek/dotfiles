#!/bin/sh

set -x

for DOTFILE in ackrc gitconfig gitignore ghci vimrc
do
  ln -s "$PWD/$DOTFILE" "$HOME/.$DOTFILE"
done

mkdir -p "$HOME/.config"
ln -s "$PWD/fish" "$HOME/.config/fish"

VSCODE_CONFIG="$HOME/Library/Application Support/Code/User"
mkdir -p "$VSCODE_CONFIG"
ln -s "$PWD/vscode/settings.json" "$VSCODE_CONFIG/settings.json"
ln -s "$PWD/vscode/keybindings.json" "$VSCODE_CONFIG/keybindings.json"

mkdir -p "$HOME/.ssh"
ln -s "$PWD/ssh_config" "$HOME/.ssh/config"
