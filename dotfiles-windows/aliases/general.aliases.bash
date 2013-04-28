
alias reload='source ~/.bashrc && echo "sourced ~/.bashrc"'

# Directory
LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS
alias ls='ls -hBGlah -F --color --show-control-chars'
alias lsd='ls -l ${colorflag} | grep "^d"'


alias md='mkdir -p'
alias rd='rmdir'

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up two directories
alias -- -='cd -'        # Go back

# Shortcuts
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"
alias h="history"
alias j="jobs"
alias v="vim"
alias m="mate ."
alias s="sb"
alias o="open"
alias oo="open ."
alias c='clear'
alias k='clear'
alias cls='clear'
alias q='exit'


alias tf='tail -F -n200'

# Misc
# Get week number
alias week='date +%V'

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Disk usage with human sizes and minimal depth
alias du1='du -h --max-depth=1'
alias fn='find . -name'
alias hi='history | tail -20'