nnoremap <buffer> <C-]> :call <SID>MyFunction()<cr>

function! s:MyFunction()
  echom "Got Here"
endfunction
