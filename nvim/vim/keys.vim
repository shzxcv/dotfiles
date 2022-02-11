"" Switching Buffers
" Next
nnoremap <C-n> gt
" Prev
nnoremap <C-p> gT

"" AutoComplete quotes, brackets
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<LEFT>
inoremap [(<Enter> []<Left><CR><ESC><S-o>
inoremap ' ''<LEFT>
" Vim files not complete
" [Issue] Vim files open from Nerdtree is not working.
" autocmd BufNewFile,BufReadPre *\(.vim\)\@<! inoremap " ""<LEFT>
autocmd Filetype * call AutoCompleteDoubleQuote()

function! AutoCompleteDoubleQuote()
  if expand("%:e") != "vim"
    inoremap " ""<LEFT>
  endif
endfunction
