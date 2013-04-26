
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

export PS1=$Time12h' \[\033[01;32m\]\h\[\033[01;37m\] \w\[\033[1;33m\]$(__git_ps1 "(%s)") \[\033[01;37m\]$\[\033[00m\] '

# Larger bash history (default is 500)
export HISTFILESIZE=10000
export HISTSIZE=10000

# colored grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'


#source $path/aliases.sh

function load_all() {
  file_type=$1
  [ ! -d "$path/$file_type" ] && mkdir "$path/${file_type}"
  for src in $path/${file_type}/*; do
      filename="$(basename ${src})"
      [ ${filename:0:1} = "_" ] && continue
      dest="${path}/${file_type}/${filename}"
      echo $dest
      source $dest
  done
}

echo ""
echo "loading aliases"
load_all aliases

echo ""
echo "loading plugins"
load_all plugins