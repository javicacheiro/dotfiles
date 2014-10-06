# Dotfiles
This repository includes my custom dotfiles. They are based on other great dotfiles found on github, mainly these repositories were my sources of inspiration:
- https://github.com/garybernhardt https://github.com/garybernhardt/dotfiles
- https://github.com/chrishunt https://github.com/chrishunt/dot-files


In order to help you to quickly find the application you are interested in, the configuration files are organized in different directories for each application.

## Installation
The configuration files are not intended to be installed directly but adapted to your particular needs. In any case if you want to install them directly you can use the `setup.sh` a script included with each tool that takes care of installing the configuration, for example in the case of vim configuration:

    cd ~
    git clone https://github.com/alcachi/dotfiles.git
    cd dotfiles/vim
    ./setup.sh

This way you can install just the configuration of the tools you are interested in.

## Vim
To manage vim plugins I use pathogen and git submodules. To simplify adding new plugins or synchronizing existing ones with the latest updates I use the following scripts under vim/vim subdirectory:
- add_submodule.sh
- sync_submodules.sh

## gnome-terminal
I use both Ethan Schoonover's [solarized theme](http://ethanschoonover.com/solarized) and [base16](https://github.com/chriskempson/base16-gnome-terminal)

## Testing
I use these configuration files mainly in OpenSuse 13.1 and Ubuntu 14.04.
