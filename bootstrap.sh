#!/bin/sh

# Usage:
# curl -fsSL https://github.com/aztek/dotfiles/raw/master/bootstrap.sh

set -x

if ! command -v brew
then
  curl --fail --silent --show-error --location \
    https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
fi

if ! command -v git
then
  brew install git
fi

git clone https://github.com/aztek/dotfiles "$HOME/dotfiles"

exec "$HOME/dotfiles/init.sh"
