"" Rename the tab labels
function MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)

  let label = bufname(buflist[winnr - 1])

  if label == "NERD_tree_1"
    let label = bufname(buflist[winnr - 2])
    return fnamemodify(label, ":p:.")
  else
    return fnamemodify(label, ":p:.")
  endif
endfunction

function MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " 強調表示グループの選択
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " ラベルは MyTabLabel() で作成する
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
  endfor

  " 最後のタブページの後は TabLineFill で埋め、タブページ番号をリセットする
  let s .= '%#TabLineFill#%T'

  return s
endfunction

set tabline=%!MyTabLine()
