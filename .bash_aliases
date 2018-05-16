# git aliases
alias gs='git status'
alias gl='git log --pretty=format:"'"%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s"'" --date=short'
alias ga='git add'
alias gcm='git commit -m'
alias gca='git commit --amend'
# alias gac='git commit -am "$(date)"'
alias gd='git diff'
alias gdt='git difftool -d'
alias gb='git branch'
alias gco='git checkout'

# prompt
PROMPT1="\[\e[1;32m\][\[\e[0m\]"
PROMPT2="\[\e[0;37m\]\u@\h \w\[\e[0m\]"
PROMPT3="\[\$(git_color)\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 1)\[\e[1m\]"
PROMPT4="\[\e[1;32m\]]\[\e[0m\] "
export PS1="$PROMPT1$PROMPT2$PROMPT3$PROMPT4"
export PROMPT_DIRTRIM=2
function git_color {
  local git_status="$(git status 2> /dev/null)"

  if [[ $git_status =~ "Changes to be committed" || $git_status =~ "Untracked files" ]]; then
    echo -e "\e[1;33m"
  else
    echo -e "\e[0;36m"
  fi  
}

# tmux
tmuxquad() {
  tmux splitw -h -p 50 -t 0
  tmux splitw -v -p 50 -t 0
  tmux selectp -t 0
  tmux splitw -v -p 50 -t 2
  tmux selectp -t 0
}

tmuxvsplit() {
  tmux splitw -h -p 50 -t 0
  tmux splitw -v -p 50 -t 1
  tmux splitw -v -p 50 -t 1
  tmux selectp -t 0
}

tmuxhsplit() {
  tmux splitw -v -p 50 -t 0
  tmux splitw -v -p 50 -t 0
  tmux selectp -t 0
}
alias tmuxrs='tmux rename-session'
