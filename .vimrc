set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


" MyPlugins
Plugin 'nanotech/jellybeans.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'blueyed/vim-diminactive'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'valloric/youcompleteme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lineset nocompatible              " be iMproved, required
filetype off                  " required


" Put your non-Plugin stuff after this line	

set number relativenumber

set tabstop=4

set autoindent

set cindent

set sw=4

set ts=4

set title

set ignorecase

syntax on

set mouse=c

set cursorline

set visualbell

set hlsearch

" NerdTree
nmap <F3> :NERDTreeToggle<CR>

" Tagbar
nmap <F4> :Tagbar<CR>

" to make easy to explor buffer 
nmap <F7> :bp<CR>
nmap <F8> :bn<CR>

" diminactive
let g:diminactive_enable_focur = 1

" vim air-line
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list

" indentGuide setup
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" ycm setup
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'

colorscheme jellybeans

" Compile key : Compile and if success execute
" C++ compile + execute
autocmd FileType cpp nnoremap <buffer> <f9> :w<CR>:!g++ -o %< % && ./%<<CR>
" C compile + execute
autocmd FileType c nnoremap <buffer> <f9> :w<CR>:!gcc -o %< % && ./%<<CR>
" Rust compile + excute
autocmd FileType rust nnoremap <buffer> <f9> :w<CR>:!rustc % && ./%<<CR>
