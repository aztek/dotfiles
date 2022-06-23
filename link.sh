#!/bin/sh

set -x

link()
{
  SRC=$1; shift
  DST=$1; shift
  unlink "$DST"
  ln -s "$SRC" "$DST"
}

for DOTFILE in ackrc gitconfig gitignore ghci vimrc
do
  link "$PWD/$DOTFILE" "$HOME/.$DOTFILE"
done

mkdir -p "$HOME/.config"
link "$PWD/fish" "$HOME/.config/fish"

VSCODE_CONFIG="$HOME/Library/Application Support/Code/User"
mkdir -p "$VSCODE_CONFIG"
link "$PWD/vscode/settings.json" "$VSCODE_CONFIG/settings.json"
link "$PWD/vscode/keybindings.json" "$VSCODE_CONFIG/keybindings.json"

mkdir -p "$HOME/.ssh"
link "$PWD/ssh_config" "$HOME/.ssh/config"

mkdir -p "$HOME/.local/bin"
for TOOL in "$PWD"/tools/*
do
  link "$TOOL" "$HOME/.local/bin/$(basename "$TOOL")"
done
