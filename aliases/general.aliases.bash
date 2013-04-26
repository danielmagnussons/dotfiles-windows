

alias gits="git status"
alias g='git '
# autocomplete for g
complete -o default -o nospace -F _git g


# Directory
LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS
alias ls='ls -Xlah -F --color --show-control-chars'
# List only directories
alias lsd='ls -l ${colorflag} | grep "^d"'
alias	md='mkdir -p'
alias	rd='rmdir'

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up two directories
alias -- -='cd -'        # Go back



# Shortcuts
alias d="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"
alias g="git"
alias h="history"
alias j="jobs"
alias v="vim"
alias m="mate ."
alias s="subl ."
alias o="open"
alias oo="open ."
alias c='clear'
alias k='clear'
alias cls='clear'
alias q='exit'


# Misc
# Get week number
alias week='date +%V'

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'