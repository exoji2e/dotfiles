set nocompatible              " be iMproved, required
filetype off                " required
set encoding=utf-8

set mouse=a mousemodel=popup
" set the runtime path to include Vundle and initialize
set shell=/bin/bash
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Scala highlighting.
Plugin 'derekwyatt/vim-scala'
" ELM highlighting.
Plugin 'elmcast/elm-vim'

" Dart Highlighting.
Plugin 'dart-lang/dart-vim-plugin'
" Track the engine.
Plugin 'SirVer/ultisnips'
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Asynchronous Lint Engine
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.

Plugin 'w0rp/ale'
let g:ale_python_flake8_options='--ignore=E225,E402,E501,E741,E226,E701'
let g:ale_sign_column_always=1

Plugin 'altercation/vim-colors-solarized'

Plugin 'auto-pairs-gentle'
let g:AutoPairsUseInsertedCount = 1

Plugin 'b4winckler/vim-angry'

call vundle#end()            " required
filetype plugin indent on    " required


set background=dark
colorscheme solarized
syntax on
" tab = 4spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" dont wrap normal files
set nowrap spell
set inccommand=nosplit

" wrap tex and md-files
au BufRead,BufNewFile *.tex setlocal wrap shiftwidth=2 spell spelllang=en_us
 
au BufRead,BufNewFile *.md setlocal wrap
au BufRead,BufNewFile *.html setlocal wrap shiftwidth=2

" let arrowkeys go to next line
set whichwrap+=<,>,[,]

" jump up visual lines instead of real lines.
noremap k gk
noremap j gj
noremap 0 g0
noremap $ g$
noremap <Up>   gk
noremap <Down> gj
noremap <Home> g<Home>
noremap <End>  g<End>

set rnu number
set scrolloff=8
