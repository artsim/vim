# The Vim Configuration of Champions

[See dot_vim's Stats on GitEgo](http://gitego.com/mutewinter/dot_vim)

## Installation

1. `git clone http://github.com/mutewinter/dot_vim.git` in your home folder.
2. `mv dot_vim .vim`
3. `cd .vim`
4. `rake vim:link` to make the .vimrc symbolic link.
5. Install [Vundle](https://github.com/gmarik/vundle) with `git clone
   http://github.com/gmarik/vundle.git bundle/vundle`
6. Run Vim and type `:BundleInstall` to install the plugins with Vundle.
7. Enjoy enhanced productivity, increased levitation, reduced
   watermelon-related accidents, and startling sex appeal.

## Screenshots

**MacVim** / **Windows gVim**

[![MacVim](https://github.com/mutewinter/dot_vim/raw/master/screenshots/MacVim1_small.png)](https://github.com/mutewinter/dot_vim/raw/master/screenshots/MacVim1.png) [![Windows gVim](https://github.com/mutewinter/dot_vim/raw/master/screenshots/Windows1_small.png)](https://github.com/mutewinter/dot_vim/raw/master/screenshots/Windows1.png)

## Requirements

**Mac**

 * [MacVim](https://github.com/b4winckler/macvim) - I'm currently using
 [snapshot 65](https://github.com/b4winckler/macvim/downloads) on Mountain
 Lion.

**Windows**

 * [gVim](http://www.vim.org/download.php#pc) - I'm using [Wu
 Yongwei's](http://wyw.dcweb.cn) pre-compiled [gVim
 7.3.333](http://wyw.dcweb.cn/download.asp?path=vim&file=gvim73.zip) because it
 has Ruby support and the latest patches.

## Notes

Be sure to always edit the vimrc using `,v`, which opens the vimrc in the .vim
folder. Vim has a nasty habit of overriding symlinks.

## Plugin Installation / Requirements

Here's a list of plugins that require further installation or have
dependancies.

 * [Command-T](https://github.com/wincent/Command-T) Needs compilation, see its
 readme for more instructions.
 * [Fugitive](https://github.com/tpope/vim-fugitive) Requires Git to be
 installed.
 * [syntastic](https://github.com/scrooloose/syntastic) Requires many different
 binaries installed depending on what filetypes you want it to check. See the
 [FAQ](https://github.com/scrooloose/syntastic#faq) for more information.
 * [ack.vim](https://github.com/mileszs/ack.vim) Requires
 [ack](http://betterthangrep.com/) to be installed.
 * [Menlo for Powerline](https://gist.github.com/1627888) The custom font I'm
 using for vim-powerline.
 * [MultiMarkdown](http://fletcherpenney.net/multimarkdown/download/) Required
 for Markdown-Preview.

## Plugin List

_Note: Auto generated by `rake plugins:update_readme`_


 * [vundle](https://github.com/gmarik/vundle) - Vundle, the plug-in manager for Vim
 * [ZoomWin](https://github.com/vim-scripts/ZoomWin) - Zoom in/out  of windows (toggle between one window and multi-window)
 * [Command-T](https://github.com/wincent/Command-T) - Mirror of the official Command-T repository at git.wincent.com
 * [vim-space](https://github.com/christoomey/vim-space) - space.vim - Smart Space key for Vim
 * [vim-easymotion](https://github.com/Lokaltog/vim-easymotion) - Vim motions on speed!
 * [ctrlp.vim](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder.
 * [vim-indent-guides](https://github.com/mutewinter/vim-indent-guides) - A Vim plugin for visually displaying indent levels in code
 * [vim-powerline](https://github.com/Lokaltog/vim-powerline) - The ultimate vim statusline utility.
 * [nerdtree](https://github.com/scrooloose/nerdtree) - A tree explorer plugin for vim.
 * [colorv.vim](https://github.com/Rykka/colorv.vim) - A vim plugin to make  colors handling easier
 * [jellybeans.vim](https://github.com/nanotech/jellybeans.vim) - A colorful, dark color scheme for Vim.
 * [quickfixsigns_vim](https://github.com/tomtom/quickfixsigns_vim) - Mark quickfix & location list items with signs
 * [nerdcommenter](https://github.com/scrooloose/nerdcommenter) - Vim plugin for intensely orgasmic commenting
 * [vim-surround](https://github.com/tpope/vim-surround) - surround.vim: quoting/parenthesizing made simple
 * [vim-fugitive](https://github.com/tpope/vim-fugitive) - fugitive.vim: a Git wrapper so awesome, it should be illegal
 * [tabular](https://github.com/godlygeek/tabular) - Vim script for text filtering and alignment
 * [ack.vim](https://github.com/mileszs/ack.vim) - Vim plugin for the Perl module / CLI script 'ack'
 * [sudo-gui.vim](https://github.com/gmarik/sudo-gui.vim) - sudo GUI for a GUI vim
 * [vim-togglelist](https://github.com/milkypostman/vim-togglelist) - Functions to toggle the [Location List] and the [Quickfix List] windows.
 * [sideways.vim](https://github.com/AndrewRadev/sideways.vim) - A Vim plugin to move function arguments (and other delimited-by-something items) left and right.
 * [keepcase.vim](https://github.com/vim-scripts/keepcase.vim) - Functions for doing case-persistant substitutions
 * [scratch.vim](https://github.com/vim-scripts/scratch.vim) - Plugin to create and use a scratch Vim buffer
 * [zencoding-vim](https://github.com/mattn/zencoding-vim) - zen-coding for vim: http://code.google.com/p/zen-coding/
 * [GIFL](https://github.com/mutewinter/GIFL) - Add "wrap terms in google I'm feeling lucky url" à la Textmate
 * [vim-markdown-preview](https://github.com/swaroopch/vim-markdown-preview) - Select Markdown text, render to HTML and preview in browser
 * [switch.vim](https://github.com/AndrewRadev/switch.vim) - A simple Vim plugin to switch segments of text with predefined replacements
 * [IndexedSearch](https://github.com/vim-scripts/IndexedSearch) - shows  'Nth match out of M'  at every search (index of match+total # matches)
 * [vim-session](https://github.com/xolox/vim-session) - Extended session management for Vim (:mksession on steroids)
 * [delimitMate](https://github.com/Raimondi/delimitMate) - Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
 * [syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks for vim
 * [supertab](https://github.com/ervandew/supertab) - Perform all your vim insert mode completions with Tab
 * [MatchTag](https://github.com/gregsexton/MatchTag) - Vim's MatchParen for HTML tags
 * [neocomplcache](https://github.com/Shougo/neocomplcache) - Ultimate auto-completion system for Vim.
 * [vim-ruby](https://github.com/vim-ruby/vim-ruby) - Vim/Ruby Configuration Files
 * [vim-haml](https://github.com/tpope/vim-haml) - Vim runtime files for Haml, Sass, and SCSS
 * [vim-rails](https://github.com/tpope/vim-rails) - rails.vim: Ruby on Rails power tools
 * [vim-rake](https://github.com/tpope/vim-rake) - rake.vim: it's like rails.vim without the rails
 * [vim-javascript](https://github.com/pangloss/vim-javascript) - Vastly improved vim's javascript indentation.
 * [vim-coffee-script](https://github.com/kchmck/vim-coffee-script) - CoffeeScript support for vim
 * [vim-json](https://github.com/leshill/vim-json) - Pathogen friendly packaging of vim-json from Jeroen Ruigrok van der Werven http://www.vim.org/scripts/script.php?script_id=1945
 * [vim-handlebars](https://github.com/nono/vim-handlebars) - Vim plugin for Handlebars
 * [html5.vim](https://github.com/othree/html5.vim) - HTML5 omnicomplete and syntax
 * [indenthtml.vim](https://github.com/vim-scripts/indenthtml.vim) - alternative html indent script
 * [tomdoc.vim](https://github.com/mutewinter/tomdoc.vim) - A simple syntax add-on for vim that highlights your TomDoc comments.
 * [vim-tomdoc](https://github.com/jc00ke/vim-tomdoc) - Simple vim plugin that adds TomDoc templates to your code.
 * [cocoa.vim](https://github.com/msanders/cocoa.vim) - Vim plugin for Cocoa/Objective-C development.
 * [taskpaper.vim](https://github.com/mutewinter/taskpaper.vim) - This package contains a syntax file and a file-type plugin for the simple format used by the TaskPaper application.
 * [nginx.vim](https://github.com/mutewinter/nginx.vim) - Syntax highlighting for nginx.conf and related config files.
 * [textile.vim](https://github.com/timcharper/textile.vim) - Textile for VIM
 * [vim-css3-syntax](https://github.com/mutewinter/vim-css3-syntax) - Add CSS3 syntax support to vim's built-in `syntax/css.vim`.
 * [vim-tmux](https://github.com/acustodioo/vim-tmux) - http://tmux.svn.sourceforge.net/viewvc/tmux/trunk/examples/tmux.vim?view=log
 * [vim-markdown](https://github.com/hallison/vim-markdown) - Markdown syntax highlight for Vim editor with snippets support
 * [vim-less](https://github.com/groenewege/vim-less) - vim syntax for LESS (dynamic CSS)
 * [vim-stylus](https://github.com/wavded/vim-stylus) - Syntax Highlighting for Stylus
 * [matchit.zip](https://github.com/vim-scripts/matchit.zip) - extended % matching for HTML, LaTeX, and many other languages
 * [vim-textobj-user](https://github.com/kana/vim-textobj-user) - Vim plugin: Support for user-defined text objects
 * [vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock) - A custom text object for selecting ruby blocks.
 * [L9](https://github.com/vim-scripts/L9) - Vim-script library
 * [vim-repeat](https://github.com/tpope/vim-repeat) - repeat.vim: enable repeating supported plugin maps with "."

_That's 59 plugins, holy crap._