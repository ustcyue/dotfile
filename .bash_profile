
export GOPATH=$HOME/go
export GOROOT=/usr/local/go/
export PATH=$PATH:$GOPATH/bin
#export SCALA_HOME=/Users/xiaoning/work/scala
#export PATH=$PATH:$SCALA_HOME/bin

source $HOME/.private.sh
alias ll="ls -l"
alias vi="vim"
alias ctags="`brew --prefix`/bin/ctags"
alias grep="grep -r --color "
alias redis-start="sudo launchctl start io.redis.redis-server"
alias redis-stop="sudo launchctl stop io.redis.redis-server"
alias gosrc="cd $MYTEKSIGO"

#mysql.server start
#redis-start
#PS1="\[\033[33m\]\t\[\033[m\]-\[\033[35m\]\u\[\033[m\]:\[\033[33;1m\]\W\[\033[m\]\$ "
clear

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
