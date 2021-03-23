# Path to your oh-my-zsh installation.
export ZSH="/Users/leolung/.oh-my-zsh"

ZSH_THEME="leolung"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export LESS="-F -X $LESS"                                                                                                                                                                                                                     

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

# Fix numeric keypad
# 0 . Enter
bindkey -s "^[Op" "0"
bindkey -s "^[On" "."
bindkey -s "^[OM" "^M"
# 1 2 3
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
# 4 5 6
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
# 7 8 9
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# + -  * / =
bindkey -s "^[Ol" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"
bindkey -s "^[OX" "="
