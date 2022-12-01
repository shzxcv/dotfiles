"" Leader Key
" Mapping
let mapleader = " "
" Wait Time
set timeoutlen=200

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

"" Paste Indentation
nnoremap p p=']^
nnoremap P P='[^

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

"" text-case.nvim
nnoremap <leader>s :lua require('textcase').current_word('to_snake_case')<CR>
nnoremap <leader>c :lua require('textcase').current_word('to_pascal_case')<CR>
