# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh-history
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

# Add plugin manager Zinit
zstyle :compinstall filename '/home/lucky/.zshrc'
typeset -A ZINIT=(
	BIN_DIR $HOME/.config/zsh/zinit/bin
	HOME_DIR $HOME/.config/zsh/zinit
	COMPINIT_OPTS -C
)
source $HOME/.config/zsh/zinit/zinit.zsh

# Add plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light romkatv/powerlevel10k
zinit light Aloxaf/fzf-tab

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Default Configurations

## change directory just by typing its name
setopt autocd
## auto correct mistakes
setopt correct
## allow comments in interactive mode
setopt interactivecomments
## enable filename expansion for arguments of the form 'anything=expression'
setopt magicequalsubst
## hide error message if there is no match for the pattern
setopt nonomatch
## report the status of background jobs immediately
setopt notify
## sort filenames numerically when it make sense
setopt numericglobsort
## enable command substitution in prompt
setopt promptsubst

## Environment Variables
export EDITOR=vim
export VISUAL=vim
export SUDO_EDITOR=vim
export FCEDIT=vim
export TERMINAL=alacritty
export BROWSER=google-chrome-stable

## alias to make easier
alias ls='ls --color=auto'
alias grep='grep --color=auto'

## swtich Caps_lock and ESC
setxkbmap -option caps:swapescape

## set backlight to a comfortable value
light -S 80
## setfont to make font larger
# setfont /usr/share/kbd/consolefonts/LatGrkCyr-12x22.psfu.gz

## Export environment virables of Conda
export PATH="/opt/miniconda3/bin:$PATH"
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# End of Configuration

# Define Functions

## >>> conda initialize >>>
conda_init(){
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
}
## <<< conda initialize <<<

