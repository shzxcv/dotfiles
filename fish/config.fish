# Homebrew Setting
eval "$(/opt/homebrew/bin/brew shellenv)"

# asdf Setting
source (brew --prefix asdf)/libexec/asdf.fish

# gcloud
source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"

# VI Mode
fish_vi_key_bindings
bind -M insert \cf forward-char

# Alias Setting
alias ls='ls -aG'
alias ll='ls -al'

# Alias GNU Comand
alias sed='gsed'
alias grep='ggrep'
alias awk='gawk'
alias find='gfind'
alias xargs='gxargs'
alias tar='gtar'
alias date='gdate'

# ls Color eir
export LSCOLORS=gxfxcxdxbxegedabagacad
