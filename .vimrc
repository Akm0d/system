syntax on

colorscheme delek
set nocompatible
filetype plugin on
filetype on

set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set number
set autoindent
set hlsearch

xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>

function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

