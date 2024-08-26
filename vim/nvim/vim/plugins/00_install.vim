call plug#begin('~/.config/nvim/plugged')
  "" File
  Plug 'preservim/nerdtree'
  "" File Icon
  Plug 'ryanoasis/vim-devicons'
  "" A project which translate Vim documents into Japanese.
  Plug 'vim-jp/vimdoc-ja'
  "" Indent Guide
  Plug 'lukas-reineke/indent-blankline.nvim'
  "" LSP
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "" GraphQL
  Plug 'jparise/vim-graphql'
  "" WhiteSpace
  "[:StripWhitespace] is delete command.
  Plug 'ntpeters/vim-better-whitespace'
  "" Preview Markdown
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
  "" Telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
  "" Terminal
  Plug 'voldikss/vim-floaterm'
  "" Converting Text
  Plug 'johmsalas/text-case.nvim'
  "" Surround
  Plug 'kylechui/nvim-surround'
  "" Complement pairs
  Plug 'jiangmiao/auto-pairs'
  "" ColorSchema
  Plug 'projekt0n/github-nvim-theme'
  "" Copilot
  Plug 'github/copilot.vim'
call plug#end()
