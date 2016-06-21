VIM
===

Pathogen
--------
Install pathogen to manage installation of external plugins:

    mkdir -p ~/.vim/autoload ~/.vim/bundle
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

Reference: https://github.com/tpope/vim-pathogen


Color schemes
-------------
They are installed under ~/.vim/colors or in pathogen ~/.vim/bundle directory

- [256 colors setup for console Vim](http://vim.wikia.com/wiki/256_colors_setup_for_console_Vim)
- [Check 256 colors are right](http://www.robmeerman.co.uk/unix/256colours)
- [Compare colorschemes](http://vimcolorschemetest.googlecode.com/svn/html/index-java.html)
- [List of most popular vim colorschemes](http://www.vim.org/scripts/script_search_results.php?keywords=&script_type=color+scheme&order_by=rating&direction=descending&search=search)
- [Package with the top 100(ish) rated color schemes on vim.sf.net as of Oct 28th, 2012](http://www.vim.org/scripts/script.php?script_id=625)

To show all the highlight colors used in a given vim scheme type:

    :so $VIMRUNTIME/syntax/hitest.vim

Color schemes that work both in terminal and gvim:
 * jellybeans
 * peaksea
 * sunburst
 * railscasts
 * zenburn
 * twilight
 * monokai
 * molokai
 * wombat256
 * wombat256mod

Light:
 * peaksea
 * moria

GUI only:
 * oceandeep
 * pyte
 * codeschool

Solarized color scheme needs the right base16 colors in terminal or the following setting (even not perfect):

> If you do use the custom terminal colors, solarized.vim should work out of 
> the box for you. If you are using a terminal emulator that supports 256 
> colors and don't want to use the custom Solarized terminal colors, you will 
> need to use the degraded 256 colorscheme. To do so, simply add the following 
> line *before* the `colorschem solarized` line:
> 
>     let g:solarized_termcolors=256
> 
> Again, I recommend just changing your terminal colors to Solarized values 
> either manually or via one of the many terminal schemes available for import."


### Installing color schemes

First move into the vim's colors directory:

    cd ~/.vim/colors

    # grb256
    wget https://github.com/garybernhardt/dotfiles/raw/master/.vim/colors/grb256.vim
    # Based on ir\_black:
    wget https://github.com/garybernhardt/dotfiles/raw/master/.vim/colors/ir_black.vim
    # Sunbursts:
    wget https://raw.githubusercontent.com/sickill/vim-sunburst/master/colors/Sunburst.vim
    # Monoka:
    wget https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim
    # Molokai: Textmate Monokai variant:
    wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
    # Zenburn:
    wget https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim
    # Wombat256: http://www.vim.org/scripts/script.php?script_id=2465
    # wombat256mod:
    wget -O wombat256mod.vim  http://www.vim.org/scripts/download_script.php?src_id=13400
    # wombat256 2.0:
    wget -O wombat256.vim http://www.vim.org/scripts/download_script.php?src_id=13397
    # wombat256 1.0:
    wget -O wombat256.vim  http://www.vim.org/scripts/download_script.php?src_id=9587
    # Jellybeans
    wget https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
    # Others
    wget -O pyte.vim http://www.vim.org/scripts/download_script.php?src_id=13283
    wget -O oceandeep.vim http://www.vim.org/scripts/download_script.php?src_id=7799
    wget -O gentooish.vim http://www.vim.org/scripts/download_script.php?src_id=9630
    wget -O peaksea.vim http://www.vim.org/scripts/download_script.php?src_id=15675
    # vividchalk
    wget https://raw.githubusercontent.com/tpope/vim-vividchalk/master/colors/vividchalk.vim

base16-railscasts and solarized are installed using pathogen:

- base16-railscasts:

    cd ~/.vim
    ./add_submodule.sh https://github.com/chriskempson/base16-vim.git bundle/colors-base16

- solarized:

    cd ~/.vim
    ./add_submodule.sh git://github.com/altercation/vim-colors-solarized.git bundle/vim-colors-solarized

Issues:

- [Issue with base16 themes](http://askubuntu.com/questions/410566/cant-get-the-right-colors-in-gnome-terminal)


gnome-terminal color settings
-----------------------------
References:

 * [dconf profiles](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Desktop_Migration_and_Administration_Guide/profiles.html)
 * http://stackoverflow.com/questions/23118916/configuring-solarized-colorscheme-in-gnome-terminal-tmux-and-vim
 * https://github.com/Anthony25/gnome-terminal-colors-solarized
 * https://github.com/chriskempson/base16-gnome-terminal.git
 * https://github.com/chriskempson/base16
 * [xterm color chart](http://upload.wikimedia.org/wikipedia/commons/9/95/Xterm_color_chart.png)

If the steps below do not work you can create a new profile in gnome-terminal and add manually the colors. This can be done from the gnome-terminal menu. If you prefer to use the command line then follow the next steps:

NOTE: The following steps can be avoided using the gnome-terminal option to create a new profile. To manually edit the settings you use dconf (the new tool that replaces gconf for new gnome applications)

You can list existing profiles with:

    dconf list /org/gnome/terminal/legacy/profiles:/

To show existing configuration:

    dconf dump /org/gnome/terminal/legacy/profiles:/

To set manually the palette of a given profile (e.g. to correct base16-solarized-dark errors):

    dconf write /org/gnome/terminal/legacy/profiles:/:aba0afc5-929a-490c-9c82-2c0b3f95141c/palette "['#073642', '#DC322F', '#859900', '#B58900', '#268BD2', '#D33682', '#2AA198', '#EEE8D5', '#002B36', '#CB4B16', '#586E75', '#657B83', '#839496', '#6C71C4', '#93A1A1', '#FDF6E3']"

Originally it was (does not work well with vim because colors 1,6,8-13,15 are different):

    dconf write /org/gnome/terminal/legacy/profiles:/:aba0afc5-929a-490c-9c82-2c0b3f95141c/palette "['#002b36', '#dc322f', '#859900', '#b58900', '#268bd2', '#6c71c4', '#2aa198', '#93a1a1', '#657b83', '#dc322f', '#859900', '#b58900', '#268bd2', '#6c71c4', '#2aa198', '#fdf6e3']"

vim does not display correctly especially because color9: #002B36 is set incorrectly in base16 to #657b83

There is a patch to solve the issue:

    dset palette "['#<%= @base["00"]["hex"] %>', '#<%= @base["08"]["hex"] %>', '#<%= @base["0B"]["hex"] %>', '#<%= @base["0A"]["hex"] %>', '#<%= @base["0D"]["hex"] %>', '#<%= @base["0E"]["hex"] %>', '#<%= @base["0C"]["hex"] %>', '#<%= @base["05"]["hex"] %>', '#<%= @base["03"]["hex"] %>', '#<%= @base["09"]["hex"] %>', '#<%= @base["01"]["hex"] %>', '#<%= @base["02"]["hex"] %>', '#<%= @base["04"]["hex"] %>', '#<%= @base["06"]["hex"] %>', '#<%= @base["0F"]["hex"] %>', '#<%= @base["07"]["hex"] %>']"
dset palette "['#<%= @base["00"]["hex"] %>', '#<%= @base["08"]["hex"] %>', '#<%= @base["0B"]["hex"] %>', '#<%= @base["0A"]["hex"] %>', '#<%= @base["0D"]["hex"] %>', '#<%= @base["0E"]["hex"] %>', '#<%= @base["0C"]["hex"] %>', '#<%= @base["05"]["hex"] %>', '#<%= @base["03"]["hex"] %>', '#<%= @base["08"]["hex"] %>', '#<%= @base["0B"]["hex"] %>', '#<%= @base["0A"]["hex"] %>', '#<%= @base["0D"]["hex"] %>', '#<%= @base["0E"]["hex"] %>', '#<%= @base["0C"]["hex"] %>', '#<%= @base["07"]["hex"] %>']"

### Gnome Terminal palette order of colors (8 normal and 8 bright colors)
Same order as ansi color table: http://en.wikipedia.org/wiki/ANSI_escape_code#Colors

```
--------------------------------------------------------------------------------
| black   | red   | green   | yellow   | blue   | magenta   | cyan   | white   |
| brblack | brred | brgreen | bryelow  | brblue | brmagenta | brcyan | brwhite |
--------------------------------------------------------------------------------
```


```
SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
--------- ------- ---- -------  ----------- ---------- ----------- -----------
base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
base01    #586e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
base00    #657b83 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
base2     #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
```


scheme: "Solarized"
author: "Ethan Schoonover (http://ethanschoonover.com/solarized)"
base00: "002b36"
base01: "073642"
base02: "586e75"
base03: "657b83"
base04: "839496"
base05: "93a1a1"
base06: "eee8d5"
base07: "fdf6e3"
base08: "dc322f"
base09: "cb4b16"
base0A: "b58900"
base0B: "859900"
base0C: "2aa198"
base0D: "268bd2"
base0E: "6c71c4"
base0F: "d33682"

scheme: "London Tube"
author: "Jan T. Sott"
base00: "231f20" # ----
base01: "1c3f95" # ---
base02: "5a5758" # --
base03: "737171" # -
base04: "959ca1" # +
base05: "d9d8d8" # ++
base06: "e7e7e8" # +++
base07: "ffffff" # ++++
base08: "ee2e24" # red
base09: "f386a1" # orange
base0A: "ffd204" # yellow
base0B: "00853e" # green
base0C: "85cebc" # aqua
base0D: "009ddc" # blue
base0E: "98005d" # purple
base0F: "b06110" # brown

Order of colors in base16 dconf (bug: middle br colors repeated):

    0 8 B A D E C 5
    3 8 B A D E C 7

Order of colors in base16 dconf (patch proposed):

    0 8 B A D E C 5
    3 9 1 2 4 6 F 7

To correspondence of the base16 base0X colors according to solarized:
```
0: brblack, 1: black, 2: brgreen, 3: bryellow, 4: brblue, 5: brcyan, 6: white, 7: brwhite
8: red, 9: brred, A: yellow, B: green, C: cyan, D: blue, E: brmagenta, F: magenta
```


This correspondence would lead to:
    1 8 B A D F C 6
    0 9 2 3 4 E 5 7

It seems the file with solarized scheme is not set in a compatible order with what is expected,
but it makes no sense because the comments in the scheme files suggest the same ordering of
the colors from ---- to ++++:
```
0: black, 1: , 2: , 3: brblack, 4: , 5: white , 6: , 7: brwhite
8: red , 9: , A: yellow , B: green , C: cyan , D: blue , E: magenta , F: 
```

Based on iterm2 template they also have the bug:

    0 8 B A D E C 5
    3 8 B A D E C 7
    bg color: 0, bold: 5, cursor: 5, text: 0, fg: 5, selected text: 5, selection color: 2

Vim theme screenshots to compare with: http://leetless.de/vim.html

    color00="<%= split_by_slash(@base["00"]["hex"]) %>" # Base 00 - Black
    color01="<%= split_by_slash(@base["08"]["hex"]) %>" # Base 08 - Red
    color02="<%= split_by_slash(@base["0B"]["hex"]) %>" # Base 0B - Green
    color03="<%= split_by_slash(@base["0A"]["hex"]) %>" # Base 0A - Yellow
    color04="<%= split_by_slash(@base["0D"]["hex"]) %>" # Base 0D - Blue
    color05="<%= split_by_slash(@base["0E"]["hex"]) %>" # Base 0E - Magenta
    color06="<%= split_by_slash(@base["0C"]["hex"]) %>" # Base 0C - Cyan
    color07="<%= split_by_slash(@base["05"]["hex"]) %>" # Base 05 - White
    color08="<%= split_by_slash(@base["03"]["hex"]) %>" # Base 03 - Bright Black
    color09=$color01 # Base 08 - Bright Red
    color10=$color02 # Base 0B - Bright Green
    color11=$color03 # Base 0A - Bright Yellow
    color12=$color04 # Base 0D - Bright Blue
    color13=$color05 # Base 0E - Bright Magenta
    color14=$color06 # Base 0C - Bright Cyan
    color15="<%= split_by_slash(@base["07"]["hex"]) %>" # Base 07 - Bright White
    color16="<%= split_by_slash(@base["09"]["hex"]) %>" # Base 09
    color17="<%= split_by_slash(@base["0F"]["hex"]) %>" # Base 0F
    color18="<%= split_by_slash(@base["01"]["hex"]) %>" # Base 01
    color19="<%= split_by_slash(@base["02"]["hex"]) %>" # Base 02
    color20="<%= split_by_slash(@base["04"]["hex"]) %>" # Base 04
    color21="<%= split_by_slash(@base["06"]["hex"]) %>" # Base 06
    color_foreground="<%= split_by_slash(@base["05"]["hex"]) %>" # Base 05
    color_background="<%= split_by_slash(@base["00"]["hex"]) %>" # Base 00
    color_cursor="<%= split_by_slash(@base["05"]["hex"]) %>" # Base 05

To manually add new profiles or if using the scripts of base16 fails:

    >> vi /etc/dconf/profile/user
    user-db:user
    system-db:local

    mkdir /etc/dconf/db/local.d/

    >> vi /etc/dconf/db/local.d/01-background
    # dconf path
    [org/gnome/desktop/background]
    # GSettings key names and their corresponding values
    picture-uri='file:///usr/share/wallpapers/openSUSEdefault/contents/images/1920x1200.jpg'
    picture-options='scaled'
    primary-color='000000'
    secondary-color='FFFFFF'

### base16 profile

    git clone https://github.com/chriskempson/base16-gnome-terminal
    ./base16-railscasts.dark.sh

### solarized profile

    git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git
    ./install.sh
    dconf list /org/gnome/terminal/legacy/profiles:/


tmux
----
References:

 * https://gist.github.com/afair/3489752
 * http://stackoverflow.com/questions/23118916/configuring-solarized-colorscheme-in-gnome-terminal-tmux-and-vim

    export TERM=screen-256color-bce

MoinMoin
--------
Reference: http://moinmo.in/VimHighlighting

Additional Plugins
------------------
### Installation

#### Automated

A helper script add_submodule.sh simplifies the process:

    cd ~/.vim
    ./add_submodule.sh git://github.com/tpope/vim-fugitive.git bundle/fugitive

And if you want to download the latest updates of all plugins:

    ./sync_submodules.sh

#### Manually

Add and download a new plugin using a git submodule:

    cd ~/vim
    git submodule add git://github.com/tpope/vim-fugitive.git bundle/fugitive
    #git submodule init && git submodule update
    git submodule update --init --recursive

To pull latest upstream changes in all the modules use:

    git submodule foreach git pull

If you just want to clone a given repository (without using submodules)

    cd .vim/bundle
    git clone URL

### Selected Plugins

[List of vim plugins sorted by popularity](http://www.vim.org/scripts/script_search_results.php?keywords=&script_type=&order_by=rating&direction=descending&search=search)

Basic functionality:

 * minibufexpl: https://github.com/fholgado/minibufexpl.vim bundle/minbufexpl
 * nerdcommenter: https://github.com/scrooloose/nerdcommenter.git bundle/nerdcommenter
   - Allows for easy commenting of code for many filetypes
 * delimit-mate: git://github.com/Raimondi/delimitMate.git bundle/delimitmate
   - Automatic closing of quotes, parenthesis, brackets, etc.
 * vim-unimpaired: git://github.com/tpope/vim-unimpaired.git bundle/vim-unimpaired
   - pairs of handy bracket mappings
 * vim-repeat: git://github.com/tpope/vim-repeat.git bundle/vim-repeat
   - enable repeating supported plugin maps with '.'

Status line:

 * vim-airline: https://github.com/bling/vim-airline bundle/vim-airline
   - A status/tabline for vim similar to bash's powerline but for vim
 * [DISABLED] powerline: conflicts with vim-airline (see below)

Colors:

 * colors-base16: https://github.com/chriskempson/base16-vim.git bundle/colors-base16

Opening files:

 * CtrlP: https://github.com/kien/ctrlp.vim bundle/ctrlp
   - file, buffer, mru, tag,... finder for Vim
 * NERD Tree: https://github.com/scrooloose/nerdtree.git bundle/nerdtree
   - Filesystem explorer: `<leader>b`

 * Gundo: http://github.com/sjl/gundo.vim.git bundle/gundo
   - Visualize your Vim undo tree: `<leader>u`

General Programming:

 * syntastic: https://github.com/scrooloose/syntastic.git bundle/syntastic
   - Linter for different languages (python uses flake8 and pylint)
 * Git: https://github.com/tpope/vim-fugitive.git bundle/fugitive
 * TaskList: https://github.com/vim-scripts/TaskList.vim.git bundle/tasklist
 * tagbar: git://github.com/majutsushi/tagbar.git bundle/tagbar

Python:

 * python-mode: https://github.com/klen/python-mode.git bundle/pthon-mode

HTML & Javascript:
 * vim-javascript: https://github.com/pangloss/vim-javascript.git bundle/vim-javascript
 * emmet-vim: https://github.com/mattn/emmet-vim.git bundle/emmet-vim
   - Support for writing HTML ussing abbreviations: `div>p#foo$*3>a + <c-y>,`

 * vim-indent-guides: git://github.com/nathanaelkane/vim-indent-guides.git bundle/vim-indent-guides
   - visually displaying indent levels: `<leader>ig`

Autocompletion & snippets:

 * YouCompleteMe: https://github.com/Valloric/YouCompleteMe.git bundle/YouCompleteMe
 * Ultisnips: https://github.com/SirVer/ultisnips bundle/ultisnips
 * honza/vim-snippets: https://github.com/honza/vim-snippets.git bundle/vim-snippets

 * salt-vim: https://github.com/saltstack/salt-vim.git
 * jinja2-vim: https://github.com/Glench/Vim-Jinja2-Syntax.git

Misc:

 * vimux: https://github.com/NickLaMuro/vimux bundle/vimux
   - vim plugin to interact with tmux


Not used anymore:
 * Command-t: git://git.wincent.com/command-t.git  (replaced by CtrlP)
 * YouCompleteMe obsoletes SuperTab: git://github.com/vim-scripts/supertab.git bundle/supertab
 * Ultisnips obsoletes snipmate: https://github.com/msanders/snipmate.vim bundle/snipmate

Plugin Specific Information
===========================
python-mode
-----------
Set colorcolumn color to gray instead of read in console mode (in gui it does it correctly):

    highlight ColorColumn ctermbg=8

Actually python mode uses colorcolumn built-in functionality.
You can move the colorcolumn position:

    set colorcolumn=80

For GVim it is done using:

    highlight ColorColumn guibg=snow

[chart of vim colornames](https://codeyarns.com/2011/07/29/vim-chart-of-color-names/)

vim-unimpaired
--------------
https://github.com/tpope/vim-unimpaired/blob/master/doc/unimpaired.txt

]l next error
[l prev error

powerline
---------
Install locally for the user (it installs in ~/.local/bin)

    pip install --user powerline-status

Edit .bashrc and add ~/.local/bin to the PATH:

    export PATH=$PATH:~/local/bin:~/dotfiles/bin:~/.local/bin:$M2

Install the fonts using fontconfig (recommended over patched font):

    wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

    mkdir -p ~/.local/share/fonts/
    mv PowerlineSymbols.otf ~/.local/share/fonts/
    fc-cache -v
    mkdir -p ~/.config/fontconfig/conf.d/
    mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

[Configure vim, bash and tmux](http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin)

For some reason fontconfig does not work in gvim, so for gvim we use the patched fonts:

    cd ~/.local/share/fonts/
    wget https://github.com/powerline/fonts/raw/master/UbuntuMono/Ubuntu%20Mono%20derivative%20Powerline.ttf
    wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Sauce%20Code%20Powerline%20Regular.otf
    fc-cache -v
    # Edit .gvimrc
    set guifont=Sauce\ Code\ Powerline\ Regular\ 12
    set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12

References:
  * http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin
  * https://powerline.readthedocs.org/en/latest/installation.html
  * https://powerline.readthedocs.org/en/master/installation/linux.html#fonts-installation

vim-airline
-----------
Enhanced status bar. Similar to powerline by easier to install.
It is also needed to install the font glyphs.

    git submodule add https://github.com/bling/vim-airline bundle/vim-airline
    git submodule update --init --recursive
    wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Sauce%20Code%20Powerline%20Regular.otf

    mkdir -p ~/.local/share/fonts/
    mv Sauce\ Code\ Powerline\ Regular.otf ~/.local/share/fonts/
    sudo fc-cache -v

    # Edit .vimrc and add
    let g:airline_powerline_fonts = 1

    # Edit .gvimrc
    set guifont=Sauce\ Code\ Powerline\ Regular\ 12

Syntastic
---------
Syntax checking, linter. For python it uses flake8 or pylint.

To ignore certain errors included in pep8 add to vimrc:

    let g:syntastic_python_flake8_args = '--ignore="E501,E302,E261,E701,E241,E126,E127,E128,W801"'

[List of error codes](http://pep8.readthedocs.org/en/latest/intro.html#error-codes)

To disable automatic opening of the error window (this is the default):

    let g:syntastic_auto_loc_list = 2

To open the error window type :Errors

To disable Syntastic by default and activate/disable error checking using <command>E
    let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ["python"], 'passive_filetypes': [] }

    nnoremap <command>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

UltiSnips
---------
Trigger them using c-k and also move through them with c-k

YouCompleteMe
-------------
Disable automatic autocomplete:

    let g:ycm_auto_trigger=0

emmet-vim
---------
To get an html basic file type: `html:5<c-y>,`
To create a div with 3 paragraphs and a anchor type the abbreviation as `div>p#foo$*3>a` and type `<c-y>,`

https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL

vim-indent-guides
-----------------
Show visually displaying indent levels in Vim.

 vimux 
-------
Easily interact with tmux from vim.

    :help vimux

https://raw.github.com/benmills/vimux/master/doc/vimux.txt

CtrlP 
------
Full path fuzzy file, buffer, mru, tag, ... finder for Vim.

Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode.
Run :CtrlPBuffer or :CtrlPMRU to invoke CtrlP in find buffer or find MRU file mode.
Run :CtrlPMixed to search in Files, Buffers and MRU files at the same time.
Check :help ctrlp-commands and :help ctrlp-extensions for other commands.
Press `<c-f>` and `<c-b>` to cycle between modes.

    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_working_path_mode = 'ra'

Gundo 
------
Visual history browser.

    " gundo
    nnoremap <leader>u :GundoToggle<CR>

NERD Tree 
----------
The NERD tree allows you to explore your filesystem and to open files and directories.

    nnoremap <leader>b :NERDTreeToggle<CR>

Tagbar 
-------
ctags package is required: zypper install ctags

Tagbar is a source code browser. It displays the tags of the current file in a sidebar, similar to taglist. But it has the advantage that it will display them ordered by their scope -- for example, methods and members in languages like C++, Python or Java will be listed under their correct class instead of just under the general categories 'functions' or 'variables'. This gives a more helpful overview of the file.

Tagbar does not need any configuration by default and can be opened by :TagbarOpen or :TagbarToggle

To simplify its usage:

    let g:tagbar_usearrows = 1
    nnoremap <leader>tb :TagbarToggle<CR>

Vim-fugitive 
------------
Git support for vim.

NERD Commenter
--------------
A bunch of key mapping for working with comments.

 *  [count]<leader>ci - Toggles the comment state of the selected line(s) individually.
 *  [count]<leader>cy- Same as cc except that the commented line(s) are yanked first.
 *  <leader>c$ - Comments the current line from the cursor to the end of line.
 *  <leader>cA - Adds comment delimiters to the end of line and goes into insert mode between them.

For complete list of NERDCommenter commands see :help NERDCommenter

Supertab
--------
Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs (:help ins-completion).

Command-t
---------
Pattern based file opener.

Command-t provides three functions

    CommandT - opens filelist in current directory
    CommandTBuffer - opens currently open buffers
    CommandTFlush - re-read file list in current directory

I have mapped these functions as following:

    noremap <leader>o <Esc>:CommandT<CR>
    noremap <leader>O <Esc>:CommandTFlush<CR>
    noremap <leader>m <Esc>:CommandTBuffer<CR>

delimit-mate
------------
automatic closing of quotes, parenthesis, brackets, etc.

Tips
====
[Avoid using the escape key using Alt instead](http://vim.wikia.com/wiki/Avoid_the_escape_key)

Using jj instead of `<Esc>`

    " Map jj as <Esc> in insert mode
    inoremap jj <Esc>

Using Ctr-s to save:

    nmap <c-s> :update<CR>
    vmap <c-s> <Esc><c-s>gv
    imap <c-s> <c-o><c-s>

Disable Ctrl-S and Ctrl-Q on terminal:

Usually these two key bindings are used for flow control, with `<C-s>` pausing output from terminal and <C-q> restoring it. If you want to disable this behaviour and use the bindings for other purposes, 
Add the following lines to your .bashrc:

    stty stop ''
    stty start ''
    stty -ixon
    stty -ixoff

Modelines
---------
Modelines are special comments that set vim options on a per-file basis, e.g.

    # vim:tabstop=4:autoindent:expandtab:shiftwidth=4

In Debian and Ubuntu, for example, the modeline option has been disabled for security reasons. To enable it:

    set modeline

Paste text
----------
Use :set paste and :set nopaste

Easier just execute:

    :r! cat

Paste the text with Shift-Insert and Ctrl-D

This can be set as a keyboard shortcut in .vimrc

    set pastetoggle=<F10>

Fix indentation
---------------
You can use the = operator.
In normal mode, typing gg=G will reindent the entire file
In visual mode, type ggVG followed by =

[Fix indentation](http://vim.wikia.com/wiki/Fix_indentation)

Javascript
----------
[Equipping Vim for JavaScript](http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/)

JavaScript bundle for vim, this bundle provides syntax and indent plugins.

    https://github.com/pangloss/vim-javascript

Configuration:

    javascript_enable_domhtmlcss: Enables HTML/CSS syntax highlighting in your JavaScript file.
    b:javascript_fold: Enables JavaScript code folding.
    g:javascript_conceal: Enables concealing characters. For example, function is replaced with ƒ
    javascript_ignore_javaScriptdoc: Disables JSDoc syntax highlighting

HTML/CSS
--------
You can autocomplete with the builtin omnifunc typing: <C-x><C-o>

Additionally use emmet-vim (see above)

To show matching tags in html and xml files:

    cd .vim/ftplugin
    wget https://raw.githubusercontent.com/gregsexton/MatchTag/master/ftplugin/html.vim
    wget https://raw.githubusercontent.com/gregsexton/MatchTag/master/ftplugin/xtml.vim

Fix indentation: reindent
-------------------------
Reindent the entire file: gg=G

In visual mode you can reindent the selection with: =

References
----------
 * http://talks.nicklamuro.com/vim_tmux
 * http://astonj.com/tech/vim-for-ruby-rails-and-a-sexy-theme/
 * http://mirnazim.org/writings/vim-plugins-i-use/
 * http://www.vimninjas.com/2012/08/26/10-vim-color-schemes-you-need-to-own/
 * https://github.com/garybernhardt/dotfiles
 * http://ethanschoonover.com/solarized/vim-colors-solarized
 * http://askubuntu.com/questions/17299/what-do-the-different-colors-mean-in-the-terminal
 * http://en.wikipedia.org/wiki/ANSI_escape_code#Colors

TODO
----
Contribute to gnome-terminal-colors-solarized adding base16 or correcting base16 errors:
 * https://github.com/Anthony25/gnome-terminal-colors-solarized/tree/master/colors/dark
 * https://github.com/chriskempson/base16-builder/blob/master/schemes/solarized.yml


NOTES
-----

```
# Print a given color: to represent <ESC> use \x1b[ or \33[ (1b is 33 in hexadecimal)
printf "\33[1;31mHelloWorld\33[m\n"
printf '\x1b[31;1mHelloWorld\x1b[\n'
# Reset color changes
printf ''\x1b[39;49m'
# Reset all atributes
printf ''\x1b[0m'

<text style>;<color>

text style: 00=none, 01=bold, 04=underscore, 05=blink, 07=reverse, 08=concealed.
color: 
    foreground: 30=black, 31=red, 32=green, 33=yellow, 34=blue, 35=magenta, 36=cyan, 37=white
    background color: 40, 41, ..., 47

```


Don’t worry, GNOME Terminal isn’t actually limited to 8 colors, it just evades detection. We can easily force 256 color support by setting the t_Co option in ~/.vimrc .

    set t_Co=256

all this information is contained in the output of dircolors --print-database, but it's formatting is rather unreadable.

Here's a technical explanation of what's happening:

Example:

    CHR 40;33;01

The colour code consists of three parts:

The first part before the semicolon represents the text style.

    00=none, 01=bold, 04=underscore, 05=blink, 07=reverse, 08=concealed.

The second and third part are the colour and the background color:

    30=black, 31=red, 32=green, 33=yellow, 34=blue, 35=magenta, 36=cyan, 37=white.

Each part can be omitted, assuming starting on the left. i.e. "01" means bold, "01;31" means bold and red. And you would get your terminal to print in colour by escaping the instruction with \33[ and ending it with an m. 33, or 1B in hexadecimal, is the ascii sign "ESCAPE" (a special character in the ascii character set). Example:
                        
    "\33[1;31mHello World\33[m"
                
Prints "Hello World" in bright red.
                        
the command ls with the argument --color=auto, and on Ubuntu, ls is an alias for ls --color=auto, goes through all the file names and tries first to match different types, like Executable, Pipe and so on. It then tries to match regular expressions like `*.wav` and prints the resulting filename, enclosed in these colour-changing instructions for bash.]

Ubuntu 14.04
============
It still uses gconftool instead of dconf:


```
>> gconftool -R /apps/gnome-terminal/profiles

 /apps/gnome-terminal/profiles/Default:
    cursor_shape = block
    scrollback_lines = 2242
    allow_bold = true
    scrollback_unlimited = false
    scroll_background = true
    backspace_binding = ascii-del
    use_theme_colors = true
    encoding = actual
    update_records = true
    use_custom_default_size = false
    login_shell = false
    icon = 
    background_image = 
    background_darkness = 0.5
    foreground_color = #000000000000
    delete_binding = escape-sequence
    scrollbar_position = right
    use_system_font = true
    use_custom_command = false
    scroll_on_output = false
    background_color = #FFFFFFFFDDDD
    word_chars = -A-Za-z0-9,./?%&#:_=+@~
    palette = #2E2E34343636:#CCCC00000000:#4E4E9A9A0606:#C4C4A0A00000:#34346565A4A4:#757550507B7B:#060698209A9A:#D3D3D7D7CFCF:#555557575353:#EFEF29292929:#8A8AE2E23434:#FCFCE9E94F4F:#72729F9FCFCF:#ADAD7F7FA8A8:#3434E2E2E2E2:#EEEEEEEEECEC
    visible_name = Default
    title = Terminal
    default_show_menubar = true
    default_size_rows = 24
    font = Monospace 12
    default_size_columns = 80
    scroll_on_keystroke = true
    silent_bell = true
    exit_action = close
    custom_command = 
    background_type = solid
    bold_color = #000000000000
    cursor_blink_mode = system
    alternate_screen_scroll = true
    bold_color_same_as_fg = true
    title_mode = replace

/apps/gnome-terminal/profiles/Profile0:
    cursor_shape = block
    scrollback_lines = 2242
    use_theme_colors = false
    scrollback_unlimited = false
    allow_bold = true
    backspace_binding = ascii-del
    scroll_background = true
    update_records = true
    use_custom_default_size = false
    background_darkness = 0.5
    login_shell = false
    background_image = 
    delete_binding = escape-sequence
    foreground_color = #838394949696
    scrollbar_position = right
    use_system_font = true
    use_custom_command = false
    scroll_on_output = false
    cursor_blink_mode = system
    word_chars = -A-Za-z0-9,./?%&#:_=+@~
    visible_name = Solarized Dark
    palette = #070736354242:#DCDC32312F2F:#858599990000:#B5B589890000:#26268B8AD2D2:#D3D336368281:#2A29A1A19898:#EEEEE8E8D5D5:#00002B2A3636:#CBCB4B4B1616:#58586E6E7575:#65657B7A8383:#838394949696:#6C6C7171C4C4:#9393A1A1A1A1:#FDFDF6F6E3E3
    title = Terminal
    default_show_menubar = true
    default_size_rows = 24
    background_color = #00002B2A3636
    default_size_columns = 80
    scroll_on_keystroke = true
    silent_bell = true
    exit_action = close
    font = Monospace 12
    custom_command = 
    background_type = solid
    bold_color = #9393A1A1A1A1
    alternate_screen_scroll = true
    title_mode = replace
    bold_color_same_as_fg = false
   
```

Converting themes
-----------------

[Converting iterm2 themes to gnome-terminal](http://www.sharms.org/blog/2012/08/24/using-iterm2-themes-with-gnome-terminal/)

[Converting textmate colorschemes to vim](https://github.com/sickill/coloration)

GVIM
====
GVim configuration
------------------
Uses .gvimrc

GVim Fonts
----------
See the available fonts with:

    set guifont=*

Select the desired font and after this type

    set guifont?

to show what the current guifont is set to.

After that copy that line into your vimrc or gvimrc.
If there are spaces in the font add a \ to escape the space.

    set guifont=Monospace\ 20

Nice monospace fonts:

 * Inconsolata
 * Ubuntu Mono
 * Deja Vu Sans Mono

For powerline use:

 * Ubuntu Mono derivative Powerline 12

References:

 * http://hivelogic.com/articles/top-10-programming-fonts
 * https://wiki.archlinux.org/index.php/fonts
 * http://design.canonical.com/2011/09/ubuntu-monospace-beta/
 * http://omarrr.com/top-7-open-source-monospace-fonts-for-developers/
