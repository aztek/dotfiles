function fish_right_prompt
    set -l git_branch (git branch 2>/dev/null | sed -n '/\* /s///p')
    printf '%s%s%s' (set_color brblack) "$git_branch" (set_color normal)
end
