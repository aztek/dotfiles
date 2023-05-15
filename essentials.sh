#!/bin/sh

set -ex

init_fish() {
  FISH=$(command -v fish)
  if test -z "$(grep "$FISH" /etc/shells)"
  then
    echo "$FISH" | sudo tee -a /etc/shells
  fi
  chsh -s "$FISH" || true
}

init_vim() {
  curl --fail --location --output "$HOME/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim | bash

  vim -es '+PlugInstall' '+qall!'
}

if [ "$(uname)" = "Darwin" ]
then
  brew tap homebrew/cask-fonts
  brew install ack coreutils diff-so-fancy exa font-fira-code fish gnu-sed gnu-tar gpg ssh-copy-id vim wget
else
  sudo add-apt-repository ppa:aos1/diff-so-fancy --yes
  sudo apt-get update --assume-yes
  sudo apt install --assume-yes ack fish diff-so-fancy exa
fi
init_fish
init_vim
