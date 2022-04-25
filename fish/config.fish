# Homebrew Setting
if is_mac_m1
    eval "$(/opt/homebrew/bin/brew shellenv)"
end

# asdf Setting
source (brew --prefix asdf)/libexec/asdf.fish

# Alias Setting
alias sed='gsed'
alias grep='ggrep'
alias ls='ls -a'
alias ll='ls -al'

# VI Mode
fish_vi_key_bindings
bind -M insert \cf forward-char

# Go
set GOPATH $HOME/go
set PATH $PATH:$GOPATH/bin
