let g:coc_node_path = trim(system("which node"))

" Go Import
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
