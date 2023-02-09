function fish_prompt
    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end
    # set_color yellow
    # printf '%s' $USER
    # set_color normal
    # printf '@'
    #
    # set_color magenta
    # echo -n (prompt_hostname)
    # set_color normal
    # printf ': '

    set_color $fish_color_cwd
    printf '%s ' (prompt_pwd)
    set -l git_branch (git branch 2>/dev/null | sed -n '/\* /s///p')
    printf "%s " $git_branch
    set_color normal

    # Line 2
    # echo
    if test -n "$VIRTUAL_ENV"
        printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
    end
    # printf '↪ '
    set_color normal
end
