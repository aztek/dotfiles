function fish_right_prompt
    if status is-interactive
        set -l git_branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)
        printf '%s%s%s' (set_color brblack) "$git_branch" (set_color normal)
    end
end
