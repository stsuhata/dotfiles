# environment values
export LANG=ja_JP.UTF-8
 
# Use color
autoload -Uz colors
colors
alias ls='ls -G'
 
# For emacs like keybind
bindkey -e
 
# Setting for history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

PROMPT='%F{magenta}%B%n%b%f @ %F{green}%U%m%u%f [%F{yellow}%~%f] $(git_prompt_info) 
$ '
