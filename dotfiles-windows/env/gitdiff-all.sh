#!/bin/sh
"/c/Program Files (x86)/Beyond Compare 3/BCompare.exe" -wait -max "$2" "$5"
#for name in $(git diff --name-only $1); do git difftool $1 $name & done