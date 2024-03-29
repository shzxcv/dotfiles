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
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'tpope/vim-surround'
  Plug 'airblade/vim-gitgutter'
  Plug 'ConradIrwin/vim-bracketed-paste'
  Plug 'tpope/vim-commentary'
  Plug 'vim-jp/vimdoc-ja'
  Plug 'skanehira/preview-markdown.vim'

  "Go
  Plug 'benmills/vimux'
  " Plug 'fatih/vim-go'
  Plug 'mattn/vim-goimports'
  Plug 'sebdah/vim-delve'

  "lspコード補完
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'

  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'

call plug#end()

"---プラグイン設定---"
"ALE
"rubocop
let g:ale_fixers = {
      \ 'ruby': ['rubocop'],
      \ }

"vim-closetag
"補完対象ファイル
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.erb,*.php,*.vue,*.js'

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

"カラー(iceburge)
"set termguicolors
"colorscheme iceberg
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"カラー(solarize)
set background=light
colorscheme solarized

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

"ハイライト検索
set hlsearch

"インクリメンタル検索
set incsearch

"vim-gitgutter更新早く
set updatetime=250

"0から始まる数字の加減 10進数扱い
set nrformats=

"全角記号
set ambiwidth=double

"長文表示
set display=lastline

"ステータスライン無効
set laststatus=0

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
"let &shell='/bin/bash --login'

"vim lsp
let g:lsp_diagnostics_echo_cursor = 1

"delve
let g:delve_use_vimux = 1
autocmd FileType go nmap <silent> ;d :DlvToggleBreakpoint<CR>

"goimports
