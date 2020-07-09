""" Leo Ateniese -  Vim configuration
""" To find more always refer to Vim docs
""" http://vimdoc.sourceforge.net/htmldoc/options.html
set nocompatible			"required
filetype off				"required

""" VUNDEL SETUP ========================================== 

"set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'
"
" " add all your plugins here (note older versions of Vundle
" " used Bundle instead of Plugin)

" "plugins ==>
 Plugin 'jnurmine/Zenburn'
 Plugin 'altercation/vim-colors-solarized'
 Plugin 'scrooloose/nerdtree'
 Plugin 'Xuyuanp/nerdtree-git-plugin'
 Plugin 'tpope/vim-fugitive'
 Plugin 'jiangmiao/auto-pairs'
 Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
 Plugin 'NLKNguyen/papercolor-theme'
 Plugin 'tpope/vim-vinegar'
 Plugin 'ctrlpvim/ctrlp.vim'
 "==========/

"All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required

"============================================== VUNDLE SETUP 

""" VIM SETTINGS ===========================================

""" <<<<<<<<<<<<Visual>>>>>>>>>>> >
"use same clipboard register for yank delete and change 
set clipboard=unnamed

""" <<<<<<<<<<<<Visual>>>>>>>>>>> >

""" <<<<<<<<<<<<Visual>>>>>>>>>>> >
" colors
"colorscheme PaperColor

let g:solarized_termcolors=256
colorscheme solarized
set background=dark

"Number Lines 
set number

" Highlight matching braces 
set showmatch

" Syntax highlighting 
set t_Co=265 
syntax on

" Highlight all matches
set hlsearch
set incsearch "hightlight matches on the fly as typing

" text width 
set textwidth=120

" comma seperated list of screen columns
"set colorcolumn=81
set cc=+1 " highlight column after 'textwidth'

" status line 0:never 1:only if there at least two windows 2: always
set laststatus=2
" encoding set to utf-8 && (fileEncoding) `fenc` and (terminalEncoding) `tenc`  will be the same
set enc=utf-8

""" <<<<<<<<<<<<Visual>>>>>>>>>>> >

""" <<<<<<<<<<Formatting>>>>>>>>>>> 

set autoindent
set smartindent 
set expandtab " insert space characters whenever the tab key is pressed
set tabstop=2	 " number of a Tap in the file counts
set shiftwidth=2 " number of spaces to use for each step  of (auto)indent)
""" Better comments =============
" `s` start of three-piece comment 
" `l` left align 
" `m` middle of three-piece comment
" `b` blank space
" `e` end of three-piece comment
" `l` left align 
" `x` end to be insert before last character
set comments=sl:/**,mb:\ *,elx:\ **/
""" ============= Better comments

""" <<<<<<<<<<Formatting>>>>>>>>>>

"" <<<<<<<<<<KeyMapping>>>>>>>>>>

"Nerdtree toggle Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" make backspaces more powerfull
set backspace=indent,eol,start

"" <<<<<<<<<<KeyMapping>>>>>>>>>>
