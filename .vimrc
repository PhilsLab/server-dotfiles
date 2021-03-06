" plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-python/python-syntax'
Plug 'machakann/vim-highlightedyank'
Plug 'justinmk/vim-sneak'
call plug#end()

" basics
set title
set number
set relativenumber
set showmatch
set wrap
set showbreak=>>\ \ 
set cursorline
set ignorecase
set incsearch
set gdefault
set path+=**
syntax on

" colorscheme
colorscheme slate

" tabs
set softtabstop=2
set expandtab
set autoindent
set shiftwidth=2
set tabstop=2

" enable mouse interaction
set selectmode+=mouse
set mouse=a

" disable swapfiles
set noswapfile
set nobackup
set nowritebackup

" plugin settings
let g:highlightedyank_highlight_duration = 3000

" write with root privileges
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" literally next/prev. line (even with wrapped lines)
nnoremap j gj
nnoremap k gk

" switch to next/prev. buffer with tab/shift-tab
nnoremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprevious<CR>

" restore cursor position
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

