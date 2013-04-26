
path="$HOME/dotfiles"
echo "$path"
source $path/theme/prompt.sh

# Larger bash history (default is 500)
export HISTFILESIZE=10000
export HISTSIZE=10000

# colored grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'


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