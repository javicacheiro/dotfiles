This repository includes my custom dotfiles. They are based on great dotfiles found on github, mainly these repositories were my sources of inspiration:
- @garybernhardt https://github.com/garybernhardt/dotfiles
- @chrishunt https://github.com/chrishunt/dot-files


In order to help you to quickly find the application you are interested in, the configuration files are organized in different directories for each application.

Even if the configuration files are intended to be adapted to your particular needs and not installed directly, there is also a script included with each tool that takes care of installing the configuration, for example in the case of vim configuration:

    cd vim
    ./setup.sh

This way you can install the configuration of just the tools you are interested in.

To manage vim plugins I use pathogen and git submodules. To simplify adding new plugins or synchronizing existing ones with the latest updates I use the following scripts under vim/vim subdirectory:
- add_submodule.sh
- sync_submodules.sh

I use these configuration files mainly in OpenSuse 13.1 and Ubuntu 14.04.
