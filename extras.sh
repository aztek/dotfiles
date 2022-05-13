#!/bin/sh

set -ex

if [ "$(uname)" = "Darwin" ]
then
  brew install cloc graphviz jq ncdu shellcheck
else
  sudo apt install --assume-yes cloc graphviz jq ncdu shellcheck xdot
fi
