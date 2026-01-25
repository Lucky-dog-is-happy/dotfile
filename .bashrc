#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@ \W]\$ '

# alias
alias ls=lsd
alias ll='lsd -l'
alias lnc='lsd --color=never'
alias grep='grep --color=auto'
alias d='date +"%m-%d %A %T"'
alias v=vim
alias nv=nvim
alias t=task
alias x=tmux
alias lg=lazygit
alias hg=hldger
alias oc='opencode --continue'
alias ocn='opencode'
alias cw='sdcv'
alias ..='echo "cd .."; cd ..'

# environment variable
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
export PATH="$PATH:/home/lucky/.local/bin"

set $EDITOR=nvim
set $BROWSER=google-chrome

# bash configuration
shopt -s extglob
shopt -s cdspell
shopt -s checkwinsize
shopt -s autocd 2>/dev/null || true
shopt -s dirspell 2>/dev/null || true

# function
nh() {
	nohup "$@" > /dev/null 2>&1 &
}

ch() {
	curl cheat.sh/$1
}

dv() {
	ddgr --unsafe -x --np "$1" | nvim -c "syntax on" -c  "set ft=rst" -c "set wrap"
}

# fzf 选项
source /usr/share/bash-completion/bash_completion
source /usr/share/fzf/key-bindings.bash

export FZF_DEFAULT_OPTS="
  --height 40%
  --layout reverse
  --info inline
  --border
  --ansi
  --color bg+:black,fg+:white,hl+:yellow
  --marker '*'
  --pointer '>'
  --separator '─'
"

