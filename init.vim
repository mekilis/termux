set number
set autowrite
syntax on

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'fatih/molokai'
Plug 'SirVer/ultisnips'
Plug 'AndrewRadev/splitjoin.vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'zchee/deoplete-go', { 'do': 'make'}

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:go_fmt_command = "goimports"
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/    bin/gocode'

let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai
