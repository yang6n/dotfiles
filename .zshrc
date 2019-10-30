export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=/home/jyang/.oh-my-zsh

#ZSH_THEME="robbyrussell"
ZSH_THEME="jyang"
#ZSH_THEME="half-life"

# CASE_SENSITIVE="true"

HYPHEN_INSENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

export UPDATE_ZSH_DAYS=13

#ENABLE_CORRECTION="true"

plugins=(git aws golang scala)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# 1) Safety
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
set -o noclobber

# 2) Listing, directories, and motion
alias ll="ls -alrtF --color"
alias la="ls -A"
alias l="ls -CF"
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias m='less'
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias md='mkdir'
alias cl='clear'
alias du='du -ch --max-depth=1'
alias treeacl='tree -A -C -L 2'

# 3) Text and editor commands
export VISUAL=vim
export EDITOR="$VISUAL"

# 4) grep options
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31' # green for matches
unset GREP_OPTIONS

# 5) sort options
unset LANG
export LC_ALL=POSIX

# 6) History  
export HISTFILESIZE=10000000
export HISTSIZE=10000
export PROMPT_COMMAND="history -a"
export HISTTIMEFORMAT="%Y-%m-%d_%H:%M:%S "
export HISTIGNORE="pwd:ls:ll:ls -al:"
export HISTCONTROL="ignoredups"

# 7) Define any user-specific variables you want here.
source ~/.zshrc_custom

# 8) Alias
alias wake112="wakeonlan 40:8D:5C:B6:90:00"

# 9) Pathes
export JAVA_HOME=$HOME/apps/jdk/latest
export SPARK_HOME=$HOME/apps/spark/latest
export HIVE_HOME=$HOME/apps/hive/latest
export HADOOP_HOME=$HOME/apps/hadoop/latest
export FLUTTER_HOME=$HOME/apps/flutter/latest
export CASSANDRA_HOME=$HOME/apps/cassandra/latest
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export KAFKA_HOME=$HOME/apps/kafka/latest
export RUST_HOME=$HOME/.cargo/

export PATH=.:$PATH:$HOME/bin:/usr/local/bin:$JAVA_HOME/bin:$SPARK_HOME/bin:$HIVE_HOME/bin:$HADOOP_HOME/bin:$FLUTTER_HOME/bin:$CASSANDRA_HOME/bin:$GOPATH/bin:$GOROOT/bin:$KAFKA_HOME/bin:$RUST_HOME/bin

export JDBC_DRIVER_HOME=/home/jyang/apps/jdbc-drivers

export CLASSPATH=.:$HADOOP_HOME/lib/*:$HIVE_HOME/lib/*:$JDBC_DRIVER_HOME/mysql/mysql-connector-java-8.0.15.jar

