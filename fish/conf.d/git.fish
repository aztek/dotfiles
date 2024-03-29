# Abbreviations
abbr --add g     git
abbr --add gr    'git rebase'
abbr --add gri   'git rebase --interactive'
abbr --add grc   'git rebase --continue'
abbr --add gita  'git add'
abbr --add gitau 'git add --update'
abbr --add gitl  'git log'
abbr --add gitd  'git diff'
abbr --add gitds 'git diff --staged'
abbr --add gits  'git status'
abbr --add gitc  'git commit'
abbr --add gitcp 'git cherry-pick'
abbr --add gitb  'git blame'
abbr --add gitco 'git checkout'
abbr --add gitg  'git grep'
abbr --add gitgw 'git grep --word-regexp'

# Complete git-rebase with 10 recent commits
complete -k -f -c git -n '__fish_git_using_command rebase' -a '(__fish_git_recent_commits | head -n10)'
