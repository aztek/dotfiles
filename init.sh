#!/bin/sh

set -x

link_dotfiles() {
  for DOTFILE in ackrc gitconfig gitignore ghci vimrc
  do
    ln -s "$PWD/$DOTFILE" "$HOME/.$DOTFILE"
  done

  mkdir -p "$HOME/.config"
  ln -s "$PWD/fish" "$HOME/.config/fish"

  VSCODE_CONFIG="$HOME/Library/Application Support/Code/User"
  ln -s "$PWD/settings.json" "$VSCODE_CONFIG/settings.json"
}

install_executables() {
  brew install "$@"
}

install_ttf() {
  TTF=$1
  FONT_DIR="$HOME/Library/Fonts"
  cp "$TTF" "$FONT_DIR"
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

install_haskell() {
  install_executables ghc cabal-install
  cabal update
  cabal install hlint
}

init_vim() {
  curl --fail --location --output "$HOME/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  vim '+PlugInstall' '+qall!'
}

init_vscode() {
  true
}

install_essentials() {
  install_executables ack diff-so-fancy exa fish jq shellcheck ssh-copy-id vim
  install_fira_code
  init_vim
}

install_essentials
link_dotfiles
