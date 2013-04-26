
path="$HOME/dotfiles"
echo "$path"
source $path/colors.sh

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"
#export PS1=$IBlack$Time12h$Color_Off$Green'"$(__git_ps1 " (%s)") '
export PS1=$Time12h' \[\033[01;32m\]\h\[\033[01;37m\] \w\[\033[1;33m\]$(__git_ps1 "(%s)") \[\033[01;37m\]$\[\033[00m\] '

# Larger bash history (default is 500)
export HISTFILESIZE=10000
export HISTSIZE=10000

# Common junk
#[[ -s "$HOME/.commonrc" ]] && source "$HOME/.commonrc"

source $path/aliases.sh