#!/bin/sh

# PATH
export GOPATH=$HOME/go
PATH+="/usr/local/opt/python@2/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH+=:$GOPAT/bin
export PATH
export EDITOR='subl -w'
# export PYTHONPATH=$PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"
# Virtual Environment
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/bin/virtualenvwrapper.sh

# Owner
export USER_NAME="william.yang"
eval "$(rbenv init -)"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }
# Aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'


