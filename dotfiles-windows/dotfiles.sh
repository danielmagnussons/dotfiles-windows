


path="$HOME/dotfiles-windows"
echo "$path"
export PATH="$path/env:$PATH"

source $path/theme/prompt.sh
source $path/completions.sh

export HISTFILESIZE=10000
export HISTSIZE=10000
export HISTCONTROL="ignoredups"
export HISTCONTROL=erasedups
export AUTOFEATURE=true autotest
PROMPT_COMMAND='history -a'

export GREP_COLOR='1;33'


function load_all() {
  file_type=$1
  [ ! -d "$path/$file_type" ] && mkdir "$path/${file_type}"
  for src in $path/${file_type}/*; do
      filename="$(basename ${src})"
      [ ${filename:0:1} = "_" ] && continue
      dest="${path}/${file_type}/${filename}"
      source $dest
  done
}

echo ""
echo "loading aliases"
load_all aliases

echo ""
echo "loading plugins"
load_all plugins

echo ""
echo "loading completions"
load_all completions