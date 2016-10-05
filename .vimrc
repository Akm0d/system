syntax on

colorscheme delek
set nocompatible
filetype plugin on
filetype on

set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set foldmethod=manual
set paste
set number
set autoindent
set hlsearch
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>

" Allow use of the mouse(This is an abomination to vim)
" set mouse=a

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction
