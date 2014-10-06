#!/bin/bash
# Purpose: Add a new bundle to vim as a submodule
if [[ $# != 2 ]]; then
    echo "Usage: $0 URL bundle/name"
fi
git submodule add $1 $2
git submodule init && git submodule update
