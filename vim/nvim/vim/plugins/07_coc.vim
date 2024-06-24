let g:coc_node_path = system("echo -n $(asdf where nodejs 20.14.0)/bin/node")

" Go Import
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
