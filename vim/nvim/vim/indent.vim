"" Keep the indent of the prev line
set autoindent

"" Advanced indent
" Disabled smartindent when cindent is enabled
" set smartindent

"" Advanced indent based on the C Lang
set cindent

"" Insert tab at the beginning of a line will indent it by the number of shiftwidths
set smarttab

"" Convert tabs to spaces
set expandtab

"" Default tab settings
" Number of spaces in shift command(>>)
set shiftwidth=2
" Number of tabs entered through the keyboard
set softtabstop=2
" Number of spaces to be converted from tabs
set tabstop=2

"" Settings for each language
" sw=shiftwidth, sts=softtabstop, ts=tabstop, et=expandtab
autocmd FileType vim         setlocal sw=2 sts=2 ts=2 et
autocmd FileType html        setlocal sw=2 sts=2 ts=2 et
autocmd FileType css         setlocal sw=2 sts=2 ts=2 et
autocmd FileType scss        setlocal sw=2 sts=2 ts=2 et
autocmd FileType sass        setlocal sw=2 sts=2 ts=2 et
autocmd FileType javascript  setlocal sw=2 sts=2 ts=2 et
autocmd FileType typescript  setlocal sw=2 sts=2 ts=2 et
autocmd FileType go          setlocal sw=4 sts=4 ts=4 noet
autocmd FileType c           setlocal sw=4 sts=4 ts=4 noet
autocmd FileType ruby        setlocal sw=2 sts=2 ts=2 et
autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
autocmd FileType yaml        setlocal sw=2 sts=2 ts=2 et
autocmd FileType markdown    setlocal sw=4 sts=4 ts=4 et
