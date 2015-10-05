" ----------------------------------------
" Vundle
" ----------------------------------------
set shell=/bin/bash
set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/Vundle.vim
let path='~/.vim/bundle/'
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" Navigation
Plugin 'ZoomWin'
" This fork is required due to remapping ; to :
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'tristen/vim-sparkup'
Plugin 'mattboehm/vim-accordion'
" UI Additions
Plugin 'greyblake/vim-preview'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'Rykka/colorv.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'wincent/Command-T'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'whatyouhide/vim-gotham'
" Commands
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'rking/ag.vim'
Plugin 'phleet/vim-mercenary'
" Automatic Helpers
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'gregsexton/MatchTag'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'

" Language Additions
"   JavaScript
Plugin 'leshill/vim-json'
"   HTML
Plugin 'mattn/emmet-vim'
Plugin 'indenthtml.vim'
"   Python
Plugin 'majutsushi/tagbar'
Plugin 'fs111/pydoc.vim'
Plugin 'kevinw/pyflakes-vim'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim--nianyang'
Plugin 'jabapyth/vim-debug'
Plugin 'davidhalter/jedi-vim'

"   Other Languages
Plugin 'timcharper/textile.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'hallison/vim-markdown'
Plugin 'groenewege/vim-less'
Plugin 'wavded/vim-stylus'
" Plugin 'michalliu/jsruntime.vim'
" Plugin 'michalliu/jsoncodecs.vim'
Plugin 'michalliu/sourcebeautify.vim'
" MatchIt
Plugin 'matchit.zip'
" Libraries
Plugin 'L9'
Plugin 'tpope/vim-repeat'


call vundle#end()
