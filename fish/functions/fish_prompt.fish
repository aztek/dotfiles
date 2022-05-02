function fish_prompt --description 'Write out the prompt'
    if test -z "$WINDOW"
        if test -n "$SSH_TTY$SSH_CLIENT"
            printf '%s%s%s' (set_color $fish_color_host_remote) (hostname) (set_color normal)
            printf ':'
        end
        printf '%s%s%s$ ' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    else
        printf '%s(%s)%s%s%s$ ' (set_color white) (echo $WINDOW) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    end
end
