function prompt_open() {
  echo -n "%{$fg_bold[cyan]%}[%{$reset_color%}"
}

function prompt_close() {
  echo -n "%{$fg_bold[cyan]%}]%{$reset_color%}"
}

function prompt_user() {
  echo -n "%F{7}$USER@%m%f"
}

function prompt_dir() {
  echo -n '%F{7}%(4~|~/.../%2~|%~)%f'
}

ZSH_THEME_GIT_PROMPT_PREFIX=' '
ZSH_THEME_GIT_PROMPT_SUFFIX=''
ZSH_THEME_GIT_PROMPT_DIRTY='*'
ZSH_THEME_GIT_PROMPT_CLEAN=''

function prompt_git() {
  local dirty
  dirty=$(parse_git_dirty)
  if [[ -n $dirty ]]; then
    echo -n "%{$fg[yellow]%}$(git_prompt_info)%{$reset_color%}"
  else
    echo -n "%{$fg[green]%}$(git_prompt_info)%{$reset_color%}"
  fi
}

PROMPT='$(prompt_open)$(prompt_user) $(prompt_dir)$(prompt_git)$(prompt_close) '
