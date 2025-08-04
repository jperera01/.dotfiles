#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\e[38;5;123m\][\u@\h]\$\[\e[0m\] '

#CUSTOM START
alias vim='nvim'
export PATH=$PATH:/home/jemes/.spicetify

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

fzf_open_file(){
  local file 
  file=$(fd --type f --hidden --exclude .git | fzf)
  if [[ -n "$file" ]] then 
	  nvim "$file"
  fi
}
# bind ctrl+f to run fzf_open_file()
bind -x '"\C-f": fzf_open_file'
export PATH=$PATH:$HOME/go/bin
