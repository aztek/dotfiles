echo gitgitgit
# Abbreviations
abbr --add g     git
abbr --add gr    'git rebase'
abbr --add gri   'git rebase --interactive'
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
abbr --add gitgw 'git grep -w'

# Complete git-rebase with recent commits
complete -k -f -c git -n '__fish_git_using_command rebase' -a '(__fish_git_recent_commits)'
