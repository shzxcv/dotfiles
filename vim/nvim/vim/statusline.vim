"" Statusline
" Popup
set statusline=%#PmenuSel#

" Filename
set statusline+=\ \ %f\ \

" Modification flag[+]
set statusline+=%m

" Readonly flag[RO]
set statusline+=%r

" The border between left and right
set statusline+=%=

" File type
set statusline+=%y

" File encoding
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}\
