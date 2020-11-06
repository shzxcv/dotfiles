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
alias rspec='bundle exec rspec'

export PS1="[\u@\h \W]\$ "

alias rstop='for x in `lsof -i:3000 | awk '\''{print $2}'\'' | grep -v PID` ; do kill -9 $x ; done'
alias rreload='for x in `lsof -i:3000 | awk '\''{print $2}'\'' | grep -v PID` ; do kill -9 $x ; done ; rails s -d'
