abbr --add untar 'tar -xzf'

abbr --add vi vim

alias l='eza -ahl --group-directories-first'
alias lt='l -T'

for c in ~/.config/fish/completion.d/*.fish
  cat $c | source
end
