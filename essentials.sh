#!/bin/sh

set -x

install_executables() {
  brew install "$@"
}

install_fira_code() {
  TMP_DIR=$(mktemp -d)
  git clone --depth 1 --branch master https://github.com/tonsky/FiraCode "$TMP_DIR"
  for TTF in "$TMP_DIR/distr/ttf"/*
  do
    install_ttf "$TTF"
  done
  rm -rf "$TMP_DIR"
}

install_ttf() {
  TTF=$1
  FONT_DIR="$HOME/Library/Fonts"
  cp "$TTF" "$FONT_DIR"
}

init_fish() {
  FISH=$(which fish)
  sudo echo "$FISH" >>/etc/shells
  chsh -s "$FISH"
}

init_vim() {
  curl --fail --location --output "$HOME/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim | bash

  vim '+PlugInstall' '+qall!'
}

install_executables ack coreutils diff-so-fancy exa fish gnu-sed gnu-tar jq shellcheck ssh-copy-id vim wget
init_fish
install_fira_code
init_vim
