# Homebrew Setting
if is_mac_m1
    eval "$(/opt/homebrew/bin/brew shellenv)"
end

if is_wsl
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
end

# asdf Setting
source (brew --prefix asdf)/libexec/asdf.fish

# VI Mode
fish_vi_key_bindings
bind -M insert \cf forward-char

# Go
set PATH $PATH:/usr/local/go/bin
set GOPATH $HOME/go
set PATH $PATH:$GOPATH/bin
