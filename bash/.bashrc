#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\e[38;5;123m\][\u@\h]\$\[\e[0m\] '

#custom 

alias vim='nvim'
export PATH=$PATH:/home/jemes/.spicetify
