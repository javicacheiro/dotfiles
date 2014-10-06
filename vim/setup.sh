#!/bin/bash
#
# Purpose: create required symlinks in the HOME
files="vimrc vim"
scriptDir="${BASH_SOURCE%/*}"
cd $scriptDir || exit

for file in $files; do
    if [[ -e ~/.$file ]]; then
        mv ~/.$file ~/.$file.bak
    fi
    ln -s $file ~/.$file
done
