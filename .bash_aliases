# git aliases
alias gs='git status'
alias gl='git log --pretty=format:"'"%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s"'" --date=short'
alias gla='git log --graph --all --decorate --pretty=format:"'"%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s"'" --date=short'
alias ga='git add'
alias gcm='git commit -m'
alias gca='git commit --amend'
# alias gac='git commit -am "$(date)"'
alias gd='git diff'
alias gdn='git diff --name-only'
alias gdt='git difftool -d'
alias gdm='git diff origin/master'
alias gdnm='git diff --name-only origin/master'
alias gdtm='git difftool -d origin/master'
alias gb='git branch'
alias gco='git checkout'
alias gp='git push origin HEAD:refs/for/master'
alias gpwip='git push origin HEAD:refs/for/master%wip'

# hg aliases
alias ha='hg add'
alias ham='hg amend'
alias hcm='hg commit -m'
alias hco='hg checkout'
alias hd='hg diff'
alias hdb='hg diff -r .^'
alias hdbf='hg diff -r .^ --stat'
alias hdf='hg diff --stat'
alias hl='hg log'
alias hp='hg pull'
alias hr='hg revert'
alias hrb='hgrebase'
alias hs='hg status'
hgrebase() {
  hg rebase -s $1 -d $2
}

# prompt
PROMPT1="\[\e[1;32m\][\[\e[0m\]"
PROMPT2="\[\e[0;37m\]\u@\h \w\[\e[0m\]"
PROMPT3="\[\$(git_color)\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 1)\[\e[1m\]"
PROMPT4="\[\e[1;32m\]]\[\e[0m\] "
export PS1="$PROMPT1$PROMPT2$PROMPT3$PROMPT4"
export PROMPT_DIRTRIM=2
function git_color {
  local git_status="$(git status 2> /dev/null)"

  if [[ $git_status =~ "Changes to be committed" ||
      $git_status =~ "Untracked files" ||
      $git_status =~ "Changes not staged for commit" ]]; then
    echo -e "\e[1;33m" # Use \x1B instead of \e if on old bash.
  else
    echo -e "\e[0;36m" # Use \x1B instead of \e if on old bash.
  fi  
}
function hg_color {
  local hg_status="$(hg status 2> /dev/null | wc -l)"

  if [[ $hg_status -ne "0" ]]; then
    echo -e "\e[1;33m" # Use \x1B instead of \e if on old bash.
  else
    echo -e "\e[0;36m" # Use \x1B instead of \e if on old bash.
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
  tmux selectp -t 0
}
alias tmuxrs='tmux rename-session'
