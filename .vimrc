"---プラグイン---"
"vim-plug
filetype plugin indent on
call plug#begin('~/.vim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-fugitive'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-endwise'
  Plug 'w0rp/ale'
  Plug 'alvan/vim-closetag'

  "Plug 'ctrlpvim/ctrlp.vim'
  "Plug 'tpope/vim-rails'
  "lspコード補完
  "Plug 'prabirshrestha/vim-lsp'
  "Plug 'mattn/vim-lsp-settings'
  "Plug 'prabirshrestha/asyncomplete.vim'
  "Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

"---プラグイン設定---"
"ALE
"rubocop
let g:ale_fixers = {
      \ 'ruby': ['rubocop'],
      \ }

"vim-closetag
"補完対象ファイル
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.erb,*.php,*.vue'

"NERDTREE
"オープンクローズ
nnoremap <silent><C-e> :NERDTreeToggle<CR>
"隠しファイル表示
let NERDTreeShowHidden=1

"vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#show_tab_count = 0
let airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline_theme = 'angr'
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

"indentguide有効化
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"---一般設定---"
"タブ設定
set expandtab
set tabstop=2
set shiftwidth=2
syntax on

"カラー 
set termguicolors
colorscheme iceberg
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"クリップポード連携
set clipboard+=unnamed

"行数
set nu

"swapfile無効
set noswapfile

"大文字小文字を区別しない
set ignorecase

"タブライン
set showtabline=2

"vimコマンド表示
set showcmd

"バックスペースが効かない問題
set backspace=indent,eol,start

"カッコとクォーテーション補完
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<LEFT>
inoremap [(<Enter> []<Left><CR><ESC><S-o>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

"tmuxステータスライン無効
if !has('gui_running') && $TMUX !=# ''
    augroup Tmux
        autocmd!
        autocmd VimEnter,VimLeave * silent !tmux set status
    augroup END
endif

"terminalでbash_profile読み込み
let &shell='/bin/bash --login'
