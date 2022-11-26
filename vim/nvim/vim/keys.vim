"" Leader Key
let mapleader = " "

"" Switching Buffers
" Next
nnoremap <C-n> gt
" Prev
nnoremap <C-p> gT

"" Coc
nmap <silent> gd <Plug>(coc-definition)

"" Telescope
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>

"" NERDTree
nnoremap <silent><Leader>e :NERDTreeToggle<CR>

"" Floaterm
nnoremap <silent> <Leader>t :FloatermToggle<CR>
tnoremap <silent> <Leader>t <C-\><C-n>:FloatermToggle<CR>

"" AutoComplete quotes, brackets
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<LEFT>
inoremap [(<Enter> []<Left><CR><ESC><S-o>
inoremap ' ''<LEFT>

"" Double quote completion for all but vim files
autocmd BufNewFile,BufReadPre,BufEnter *.vim,*.nerdtree inoremap " "
autocmd BufNewFile,BufReadPre,BufEnter *\(.vim\|.nerdtree\)\@<! inoremap " ""<LEFT>
