set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.config/nvim/bundle')

" AutoCompletion
" Plug 'Valloric/YouCompleteMe'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}}
Plug 'ervandew/supertab'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'

" Director Navigation
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'

" Productivity
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-smooth-scroll'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'

" Typescript 
Plug 'leafgarland/typescript-vim'

" Go plugins
Plug 'fatih/vim-go'
" Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" Rust plugins
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

call plug#end()            " required

filetype plugin indent on    " required


" set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
" autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow
let g:go_fmt_command = "goimports"

" Using deplete
let g:deoplete#enable_at_startup = 1

let mapleader = " "


set nofoldenable
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set ignorecase
set smartcase
set hlsearch
set relativenumber
set tabstop=2
set shiftwidth=2
set number
syntax on

set smartindent
set autoindent
set background=dark        " for the light version
colorscheme PaperColor
let g:one_allow_italics = 1 " I love italic for comments

" All custom keys for vim
nnoremap <leader>fs :w<enter>
nnoremap <leader>qq :wq<enter>
nnoremap <leader>bb :CtrlP<enter>
" nnoremap <leader>ff :NERDTreeToggle<CR>
nnoremap <leader>ft :NERDTreeToggle<CR>
nnoremap <leader>ff :CtrlP<CR>
nnoremap <leader>r :!%:p
nnoremap <leader>ww <C-W><C-W>
nnoremap <leader>fmt gg=G<enter>


" Managing some splits 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Indent guides
let g:indentLine_color_term = 239
let g:indentLine_char = '.'
let g:indentLine_conceallevel=1
" let g:indentLine_leadingSpaceEnabled=1
" let g:indentLine_bgcolor_term = 202
" let g:indentLine_bgcolor_gui = '#FF5F00'


set splitbelow 
set splitright 

" Auto pairs Options
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Change the way the cursor is in insert mode
" autocmd InsertEnter,InsertLeave * set cul!

let g:airline_theme='badwolf'


" Closing brackets
let g:AutoPairs = {}
let g:autoclose_on = 0

set visualbell t_vb=


"Rust formatting
let g:rustfmt_autosave = 1

" Type script formatting
let g:typescript_indent_disable = 0

"Multiline comment.
" let g:multi_cursor_use_default_mapping=0

" Emmet html settings
let g:user_emmet_install_global = 0
autocmd Filetype html,css EmmetInstall

let g:pymode_python = 'python3'

" Jedi vim options
let g:jedi#show_call_signatures = "1"