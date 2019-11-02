call plug#begin('~/.vim/plugged')

Plug 'jason0x43/vim-js-indent'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/unite.vim'
Plug 'davidhalter/jedi-vim'
Plug 'thinca/vim-quickrun'
Plug 'kevinw/pyflakes-vim'

call plug#end()

" Encoding
set encoding=utf-8
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
" File Format
set statusline+=[%{&fileformat}]

" File Type
set statusline+=%y

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

" auto-mkdir
augroup vimrc-auto-mkdir  " {{{
  autocmd!
  autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
  function! s:auto_mkdir(dir, force)  " {{{
    if !isdirectory(a:dir) && (a:force ||
    \    input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
    endif
  endfunction  " }}}
augroup END  " }}}

" Python
autocmd BufNewFile,BufRead *.py nnoremap <C-e> :!python %

nnoremap <F11> :QuickRun<CR>

let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
autocmd FileType python setlocal completeopt-=preview

highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
