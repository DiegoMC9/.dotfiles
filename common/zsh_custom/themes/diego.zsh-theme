#variables
if [[ $UID -eq 0 ]]; then
    local user_host='%{$fg_bold[red]%}%n%{$reset_color%}%{$fg_bold[cyan]%}@%{$reset_color%}%{$fg_bold[red]%}%m%{$reset_color%}'
    local user_symbol='#'
else
    local user_host='%{$fg_bold[red]%}%n%{$reset_color%}%{$fg_bold[cyan]%}@%{$reset_color%}%{$fg_bold[green]%}%m%{$reset_color%}'
    local user_symbol='>'
fi

local my_path='%{$fg_bold[cyan]%}${PWD/#$HOME/~}%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

#PROMPT!!!!
PROMPT="╭─${user_host} ${my_path}${git_branch}
╰─${user_symbol} "
RPS1="%B${return_code}%b"

# Must use Powerline font, for \uE0A0 to render.
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[green]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔"
