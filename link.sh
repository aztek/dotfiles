#!/bin/sh

set -x

for DOTFILE in ackrc gitconfig gitignore ghci vimrc
do
  ln -s "$PWD/$DOTFILE" "$HOME/.$DOTFILE"
done

mkdir -p "$HOME/.config"
ln -s "$PWD/fish" "$HOME/.config/fish"

VSCODE_CONFIG="$HOME/Library/Application Support/Code/User"
ln -s "$PWD/settings.json" "$VSCODE_CONFIG/settings.json"
