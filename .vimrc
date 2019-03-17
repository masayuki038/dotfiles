call plug#begin('~/.vim/plugged')

Plug 'jason0x43/vim-js-indent'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/unite.vim'

call plug#end()

" Encoding
set encoding=utf-8

" Indent
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent

" Unite
" buffer list
noremap <C-P> :Unite buffer<CR>
" file list
noremap <C-N> :Unite -buffer-name=file file<CR>

" vim-js-indent
let g:js_indent_typescript = 1
