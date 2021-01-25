set -gx PATH ~/.local/bin /usr/local/bin $PATH ~/Library/Haskell/bin

export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

set fish_greeting

abbr --add g     git
abbr --add gita  'git add'
abbr --add gitl  'git log'
abbr --add gitd  'git diff'
abbr --add gitds 'git diff --staged'
abbr --add gits  'git status'
abbr --add gitc  'git commit'
abbr --add gitcp 'git cherry-pick'
abbr --add gitb  'git blame'
abbr --add gitco 'git checkout'
abbr --add gitg  'git grep'

abbr --add untar 'tar -xzf'

abbr --add vi vim

alias l='exa -ahl --group-directories-first'
alias lt='l -T'
