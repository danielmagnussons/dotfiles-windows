alias gits="git status"
alias g='git '
# autocomplete for g
complete -o default -o nospace -F _git g

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS
alias ls='ls -Xlah -F --color --show-control-chars'