#!/bin/sh

set -ex

init_fish() {
  FISH=$(which fish)
  if test -z "$(grep "$FISH" /etc/shells)"
  then
    echo "$FISH" | sudo tee -a /etc/shells
  fi
  chsh -s "$FISH"
}

init_vim() {
  curl --fail --location --output "$HOME/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim | bash

  vim -es '+PlugInstall' '+qall!'
}

brew tap homebrew/cask-fonts
brew install ack coreutils diff-so-fancy exa font-fira-code fish gnu-sed gnu-tar gpg ssh-copy-id vim wget
init_fish
init_vim
