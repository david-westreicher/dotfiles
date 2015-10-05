"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"		my vim config file
"
" Sections:
"	-> Vundle
"	-> General
"	-> Colors and Fonts
"	-> Text, tab and indent related
"	-> Misc
"   -> Shortcuts
"	-> ToDo
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"use vim settings, rahter then vi settings
set nocompatible
"autocmd!
filetype off
"set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"load plugins
Plugin 'Vundle.vim'
Plugin 'YouCompleteMe'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'

call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

"enables line numbering
set number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Gets rid of red fonts
set background=dark

"Enables solarized theme
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" better indentation
vnoremap < <gv
vnoremap > >gv

" 1 tab should be 4 spaces long (saves screen space)
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Enable Auto indent
set ai

" Enable Smart indent
set si

" Enable Wrap lines
set wrap

"stuff i should read into:
set tw=0
highlight LineNr ctermfg=grey

set shiftround
set copyindent
set preserveindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm


""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""

"unbind arrow keys (to get rid of bad habbits)
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ToDo
""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"""""""""""""""""""""""""""""""""""""""""""""""""""
