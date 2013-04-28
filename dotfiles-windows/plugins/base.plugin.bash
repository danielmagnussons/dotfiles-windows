
ips ()
{
    about 'display all ip addresses for this host'
    group 'base'
    ifconfig | grep "inet " | awk '{ print $2 }'
}

down4me ()
{
    about 'checks whether a website is down for you, or everybody'
    param '1: website url'
    example '$ down4me http://www.google.com'
    group 'base'
    curl -s "http://www.downforeveryoneorjustme.com/$1" | sed '/just you/!d;s/<[^>]*>//g'
}

myip ()
{
    about 'displays your ip address, as seen by the Internet'
    group 'base'
    res=$(curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+')
    echo -e "Your public IP is: ${echo_bold_green} $res ${echo_normal}"
}

pmdown ()
{
    about 'preview markdown file in a browser'
    param '1: markdown file'
    example '$ pmdown README.md'
    group 'base'
    if command -v markdown &>/dev/null
    then
      markdown $1 | browser
    else
      echo "You don't have a markdown command installed!"
    fi
}

mkcd ()
{
    about 'make a directory and cd into it'
    param 'path to create'
    example '$ mkcd foo'
    example '$ mkcd /tmp/img/photos/large'
    group 'base'
    mkdir -p "$*"
    cd "$*"
}

lsgrep ()
{
    about 'search through directory contents with grep'
    group 'base'
    ls | grep "$*"
}


pman ()
{
    about 'view man documentation in Preview'
    param '1: man page to view'
    example '$ pman bash'
    group 'base'
    man -t "${1}" | open -f -a $PREVIEW
}

pri ()
{
    about 'display information about Ruby classes, modules, or methods, in Preview'
    param '1: Ruby method, module, or class'
    example '$ pri Array'
    group 'base'
    ri -T "${1}" | open -f -a $PREVIEW
}

quiet ()
{
    about 'what *does* this do?'
    group 'base'
	$* &> /dev/null &
}

banish-cookies ()
{
    about 'redirect .adobe and .macromedia files to /dev/null'
    group 'base'
	rm -r ~/.macromedia ~/.adobe
	ln -s /dev/null ~/.adobe
	ln -s /dev/null ~/.macromedia
}

usage ()
{
    about 'disk usage per directory, in Mac OS X and Linux'
    param '1: directory name'
    group 'base'
    if [ $(uname) = "Darwin" ]; then
        if [ -n $1 ]; then
            du -hd $1
        else
            du -hd 1
        fi

    elif [ $(uname) = "Linux" ]; then
        if [ -n $1 ]; then
            du -h --max-depth=1 $1
        else
            du -h --max-depth=1
        fi
    fi
}

if [ ! -e $BASH_IT/plugins/enabled/todo.plugin.bash ]; then
# if user has installed todo plugin, skip this...
    t ()
    {
        about 'one thing todo'
        param 'if not set, display todo item'
        param '1: todo text'
        if [[ "$*" == "" ]] ; then
            cat ~/.t
        else
            echo "$*" > ~/.t
        fi
    }
fi

command_exists ()
{
    about 'checks for existence of a command'
    param '1: command to check'
    example '$ command_exists ls && echo exists'
    group 'base'
    type "$1" &> /dev/null ;
}

# useful for administrators and configs
buf ()
{
    about 'back up file with timestamp'
    param 'filename'
    group 'base'
    local filename=$1
    local filetime=$(date +%Y%m%d_%H%M%S)
    cp ${filename} ${filename}_${filetime}
}

# print working file
pwf() {
    echo "$PWD/$1"
}

# make dir and cd into it
mcd() {
    mkdir -p "$1" && cd "$1"
}

# Usage: pls [<var>]
# List path entries of PATH or environment variable <var>.
printenv () { 
    eval echo \$${1:-PATH} |tr : '\n'; 
}