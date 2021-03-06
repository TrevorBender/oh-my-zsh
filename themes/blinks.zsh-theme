# https://github.com/blinks zsh theme

function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "%{%F{blue}%}±%{%f%k%b%}"
  else
    echo ' '
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX=" [%{%B%F{blue}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%K{white}%B%F{green}%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{%f%k%b%}%{%K{white}%B%F{green}%}%n%{%B%F{blue}%}@%{%B%F{cyan}%}%m%{%B%F{green}%} %{%b%F{yellow}%K{white}%}%~%{%B%F{green}%}$(git_prompt_info)%E%{%f%k%b%}
%{%K{white}%}$(_prompt_char)%{%K{white}%} \$%{%f%k%b%} '

R=$fg[red]
RESET=$reset_color
local return_code="%(?..%{$R%}%? ↵%{$RESET%})"

RPROMPT='${return_code} !%{%B%F{cyan}%}%!%{%f%k%b%}'
