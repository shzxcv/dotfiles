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
" Double quote completion for all but vim files
autocmd BufNewFile,BufReadPre,BufEnter *.vim,*.nerdtree inoremap " "
autocmd BufNewFile,BufReadPre,BufEnter *\(.vim\|.nerdtree\)\@<! inoremap " ""<LEFT>
