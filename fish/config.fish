set -gx PATH ~/.local/bin /usr/local/bin $PATH ~/Library/Haskell/bin

export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

set fish_greeting

abbr --add untar 'tar -xzf'

abbr --add vi vim

alias l='exa -ahl --group-directories-first'
alias lt='l -T'

source (dirname (status --current-filename))/git.fish
