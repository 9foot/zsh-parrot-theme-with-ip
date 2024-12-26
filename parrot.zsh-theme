export IP=$(ip addr show tun0 | grep "inet " | awk '{print $2}' | cut -d/ -f1)

PROMPT=$'%{$fg[magenta]%}┌─%(?,,%{$fg[magenta]%}[%{$fg_bold[red]%}✗%{$reset_color%}%{$fg[magenta]%}]─)[%{$fg_bold[red]%}%n%{$reset_color%}%{$fg_bold[yellow]%}@%{$fg_bold[cyan]%}%m%{$reset_color%}%{$fg[magenta]%}]─[%{$fg[magenta]%}%{$fg_bold[yellow]%}%~%{$reset_color%}%{$fg[magenta]%}]%{$(git_prompt_info)%}─[%{$fg_bold[blue]%}${IP}%{$fg_bold[magenta]%}]
%{$fg[magenta]%}└──╼ %{$fg_bold[yellow]%}%(!.#.$)%{$reset_color%} '
PS2=$' %{$fg[green]%}|>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}─[%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[magenta]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[magenta]%}⚡%{$reset_color%}"
