local ret_status="%(?:%{$fg[green]%}->:%{$fg[red]%}%B->%b)%{$reset_color%}"
local path_info="%{$fg[magenta]%}%~%{$reset_color%}"
local jobs_info="%(1j.%{$fg[cyan]%}jobs:($(jobs | wc -l))%{$reset_color%} .)"
local prompt_char="%(!.%{$fg[red]%}#%{$reset_color%}.%{$fg[gray]%}$%{$reset_color%})"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%})%{$reset_color%} "
function git_branch_info {
    local branch=$(git_current_branch)
    if [ -n "$branch" ] ; then
        echo -n $ZSH_THEME_GIT_PROMPT_PREFIX
        if [[ $(git ls-files -u 2>/dev/null | wc -l) > 0 ]] ; then
            # Conflict
            echo -n "%{$fg[red]%}"
        elif [[ $(git status --porcelain 2>/dev/null | grep "^ M" | wc -l) > 0 ]] ; then
            # Dirty
            echo -n "%{$fg[yellow]%}"
        elif [[ $(git status --porcelain 2>/dev/null | grep "^??" | wc -l) > 0 ]] ; then
            # Untracked changes
            echo -n "%{$fg[yellow]%}"
        else
            # Clean
            echo -n "%{$fg[green]%}"
        fi
        echo -n "$branch"
        echo -n $ZSH_THEME_GIT_PROMPT_SUFFIX
    fi
}

PROMPT='${ret_status} ${path_info} $(git_branch_info)${jobs_info}${prompt_char} '
