#!/bin/bash

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

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

#export PS1="[\u@\h \W]\$ "
function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\W \$(parse_git_branch) \\$ "

source /usr/local/etc/bash_completion.d/git-completion.bash

#alias rstop='for x in `lsof -i:9292 | awk '\''{print $2}'\'' | grep -v PID` ; do kill -9 $x ; done'
alias rstop='cat tmp/pids/server.pid | xargs kill -9'
alias rreload='for x in `lsof -i:9292 | awk '\''{print $2}'\'' | grep -v PID` ; do kill -9 $x ; done ; rails s -d'
alias rroutes='ymdhm=`date +%Y%m%d_%H%M%S` ; rails routes > /tmp/routes_${ymdhm} ; open /tmp/routes_${ymdhm}'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias ide='sh /Users/sho/.ide.sh'

HISTFILESIZE=10000
