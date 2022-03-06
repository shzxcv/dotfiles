#!/bin/bash
export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH=$PATH:$HOME/bin
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PS1=' \[\e[0m\]\w \[\e[0m\](\[\e[0m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\[\e[0m\]) \[\e[0m\]'

# go
GOPATH=$HOME/go
export GOPATH
export PATH="$GOPATH/bin:$PATH"

eval "$(pyenv init --path)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

# Alias
alias ls="ls -G"
alias ll="ls -l"
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias vi='vim'
alias sed='gsed'
alias rails='bundle exec rails'
alias rake='bundle exec rake'
alias rspec='bundle exec rspec'
alias rubocop='bundle exec rubocop'
alias acc_test='oj t -c "ruby main.rb" -d ./test/'
alias gits='git status'
alias gitb='git branch'
alias gitd='git diff'
gitc() {
  git commit -am "$1"
}

HISTSIZE=100000
HISTFILESIZE=100000

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# source /usr/local/etc/bash_completion.d/git-completion.bash
# alias rstop='cat tmp/pids/server.pid | xargs kill -9'
# alias rreload='for x in `lsof -i:9292 | awk '\''{print $2}'\'' | grep -v PID` ; do kill -9 $x ; done ; rails s -d'
# alias rroutes='ymdhm=`date +%Y%m%d_%H%M%S` ; rails routes > /tmp/routes_${ymdhm} ; open /tmp/routes_${ymdhm}'
