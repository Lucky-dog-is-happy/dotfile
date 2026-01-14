#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls=lsd
alias grep='grep --color=auto'
alias d='date +"%m-%d %A %T"'
alias v=nvim
alias t=task
alias x=tmux
alias lg=lazygit
alias hg=hldger
PS1='[\u@\h \W]\$ '

export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5

set $EDITOR=nvim
set $BROWSER=google-chrome

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
