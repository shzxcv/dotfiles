"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/sho/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/sho/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
" NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'ctrlpvim/ctrlp.vim'
" NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'

" You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

"end補完
NeoBundle 'tpope/vim-endwise'

"ALE静的解析
NeoBundle 'w0rp/ale'

"タグ補完
NeoBundle 'alvan/vim-closetag'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

"vim-plug導入 上手く動かないよう 2020/10/24
call plug#begin('~/.vim/plugged')
  "lspコード補完
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  "不要っぽいけど一応
  Plug 'prabirshrestha/async.vim'

  "重い
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails'
  Plug 'nathanaelkane/vim-indent-guides'
  "Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

"タブ設定
set expandtab
set tabstop=2
set shiftwidth=2
syntax on

"カラー 
set termguicolors
colorscheme iceberg
"set guicolors
"set background=dark
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"ETC代わり設定 
"karabinerで設定したので一旦コメントアウト
" imap <C-j> <esc>
" noremap! <C-j> <esc>

"クリップポード連携
set clipboard+=unnamed

"ALE rubocop設定
let g:ale_fixers = {
      \ 'ruby': ['rubocop'],
      \ }

"背景色
"set background=dark

"行数
set nu

"vim-closetag補完対象ファイル
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.erb,*.php,*.vue'

"コメントアウトマッピング
"nnoremap <C-i> 0i//<Esc>
"nnoremap <C-u> 0xx
"
"コメントアウト分岐
"if has("autocmd")
"	filetype plugin indent on
"	autocmd FileType html        setlocal sw=2 sts=2 ts=2
"	autocmd FileType html        nnoremap <buffer> <C-i> <End>a--><Esc><Home>i<!--<Esc>
"	autocmd FileType html        nnoremap <buffer> <C-f> <End>xxx<Esc><Home>xxxx<Esc>
"	
"	autocmd FileType ruby        setlocal sw=2 sts=2 ts=2
"	autocmd FileType js          setlocal sw=2 sts=2 ts=2
"	autocmd FileType javasctipt  nnoremap <buffer> <C-i> <Home>i//<Esc>
"	autocmd FileType javasctipt  nnoremap <buffer> <C-f> <Home>xx<Esc>
"	
"	autocmd FileType css         setlocal sw=2 sts=2 ts=2
"	autocmd FileType css         nnoremap <buffer> <C-i> <End>a*/<Esc><Home>i/*<Esc>
"	autocmd FileType css         nnoremap <buffer> <C-f> <End>xx<Esc><Home>xx<Esc>
"	
"	autocmd FileType scss        setlocal sw=2 sts=2 ts=2
"	autocmd FileType sass        setlocal sw=2 sts=2 ts=2
"endif

"NERDTREE
"開け閉め
nnoremap <silent><C-e> :NERDTreeToggle<CR>
"statuslineの表示
"let NERDTreeStatusline='%{exists("b:NERDTree")?fnamemodify(b:NERDTree.root.path}'

"カッコとクォーテーション補完
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<LEFT>
inoremap [(<Enter> []<Left><CR><ESC><S-o>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

"swapfileの出力先変更
"set directory=/tmp
set noswapfile

"大文字小文字を区別しない
set ignorecase

"タブライン
set showtabline=2

"vimコマンド表示
set showcmd

"vim-airlineの設定
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

"バックスペースが効かない問題
set backspace=indent,eol,start

"vimを開いているときに、tmuxステータスライン無効
if !has('gui_running') && $TMUX !=# ''
    augroup Tmux
        autocmd!
        autocmd VimEnter,VimLeave * silent !tmux set status
    augroup END
endif

"indentguide有効化
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"bash_profile読み込み
let &shell='/bin/bash --login'

"NERDTree隠しファイル表示
let NERDTreeShowHidden=1
