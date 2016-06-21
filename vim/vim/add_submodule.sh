#!/bin/bash
# Purpose: Add a new bundle to vim as a submodule
if [[ $# != 2 ]]; then
    echo "Usage: $0 URL bundle/name"
    exit 1
fi
git submodule add $1 $2
#git submodule init && git submodule update
# Some modules like YouCompleteMe have higher levels of
#   recursivity and you need to update using the --recursive
#   option
git submodule update --init --recursive
