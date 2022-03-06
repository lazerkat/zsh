# oh-my-zsh setup must happen first, since it overrides LSCOLORS
export ZSH="/Users/jeremy/.oh-my-zsh"

ZSH_THEME="lazer"
plugins=(git)
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# make ls output pretty colors (requires ls -G)
export TERM=xterm-color
export LSCOLORS=ExGxcxdxCxegedabagacad

# go
export GOPATH=/Users/jeremy/Code/go
export GOPRIVATE=github.com/lazerkat
export GO111MODULE=on

# path
export PATH=.:~/bin:$GOPATH/bin:/usr/local/sbin:$PATH

# command aliases
alias ls="ls -FG"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# node
export NODE_PATH=/usr/local/lib/node_modules

# readline libraries export for homebrew
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

# editors
export EDITOR="code -w"
export GIT_EDITOR=$EDITOR
