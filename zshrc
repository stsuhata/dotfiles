# environment values
export LANG=en_US.UTF-8
 
# Use color
export LSCOLORS=gxfxcxdxbxegedabagacad
autoload -Uz colors
colors
alias ls='ls -G'
 
# For emacs like keybind
bindkey -e
 
# Setting for history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

PROMPT='%F{magenta}%B%n%b%f @ %F{green}%U%m%u%f [%F{yellow}%~%f] 
$ '

alias macvim="/Applications/MacVim.app/Contents/MacOS/MacVim"

function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection
