# Homebrew Setting
eval "$(/opt/homebrew/bin/brew shellenv)"

# asdf Setting
. /opt/homebrew/opt/asdf/libexec/asdf.fish

# Alias Setting
alias sed='gsed'
alias ls='ls -a'
alias ll='ls -al'

# VI Mode
fish_vi_key_bindings
bind -M insert \cf forward-char

# Go
set GOPATH $HOME/go
set PATH $PATH:$GOPATH/bin
