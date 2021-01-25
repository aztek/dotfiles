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

DOTFILES="$HOME/dotfiles"
git clone https://github.com/aztek/dotfiles "$DOTFILES"

"$DOTFILES/essentials.sh"
"$DOTFILES/link.sh"
