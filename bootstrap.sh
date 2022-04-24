#!/bin/sh

set -ex

if ! command -v brew
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.profile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if ! command -v git
then
  brew install git
fi

DOTFILES="$HOME/dotfiles"
git clone https://github.com/aztek/dotfiles "$DOTFILES"

"$DOTFILES/essentials.sh"
"$DOTFILES/link.sh"
