# aliases
alias ebp='vi ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias sz= 'source $ZSH/oh-my-zsh.sh'
alias rmw='sh ~/dev/scripts/redeploy-monitor-web.sh'
alias bds='sh ~/dev/scripts/blowup-db-solr.sh'
alias pds='sh ~/dev/scripts/populate-db-solr.sh'
alias tfs='sh ~/dev/scripts/train-feature-selector.sh'
alias pls='ssh phil@192.168.1.6'
alias diane='ssh phil@diane.it.int'
alias gv=gvim
#alias itcurl='curl -v -H "X-ITS-apikey: itcom"'
# POSTGRES
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres -m fast stop'
alias pgstatus='pg_ctl -D /usr/local/var/postgres status'
alias orm='markdown $ITS_CORE/README.md | bcat'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# $@ - arguments passed to script; $_ - last argument of last command
mkcd() { mkdir -p "$@" && cd "$_"; }
itc() { curl -v -H "X-ITS-apikey: itcom" $@ | python -mjson.tool }
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'

GRADLE_HOME=/Users/phil/dev/java/tools/gradle-1.12
export GRADLE_HOME
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home
export JAVA_HOME
ACTIVATOR_HOME=/Users/phil/play_framework/activator-1.2.3-minimal
export ACTIVATOR_HOME

export PATH=$PATH:/usr/local/sbin:$GRADLE_HOME/bin:$JAVA_HOME/bin:$ACTIVATOR_HOME

ITS_CORE=/Users/phil/it-service/its-core
export ITS_CORE
ITSVC_HOME=/Users/phil/its-properties
export ITSVC_HOME
ITS_SERVICE=$ITS_CORE/dist/build/install/its
export ITS_SERVICE
export CLICOLOR=1
