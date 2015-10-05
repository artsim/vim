" ===========================================
" Who: Jeremy Mack (@mutewinter)
" What: .vimrc of champions
" Version: 2.0 - Now individual config files!
" ===========================================

" All of the plugins are installed with Vundle from this file.
source ~/Dropbox/dot_vim/vundle.vim

" Automatically detect file types. (must turn on after Vundle)
"filetype plugin indent on
filetype plugin indent on

" All of the Vim configuration.
source ~/Dropbox/dot_vim/config.vim
" All hotkeys, not depedant on plugins, are bound here.
source ~/Dropbox/dot_vim/bindings.vim
" Plugin-specific configuration.
source ~/Dropbox/dot_vim/plugin_config.vim
" Small custom functions.
source ~/Dropbox/dot_vim/functions.vim
" Auto commands.
source ~/Dropbox/dot_vim/autocmds.vim
"Added by android-vim:
set tags+=/home/artsim/.vim/tags
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
let g:SuperTabDefaultCompletionType = 'context'
"Added by android-vim:
set tags+=/home/artsim/.vim/tags
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
let g:SuperTabDefaultCompletionType = 'context'
autocmd FileType python set omnifunc=pythoncomplete#Complete
