# .bashrc

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export PATH="$(brew --prefix)/bin:$PATH"
export PATH="$(brew --prefix)/sbin:$PATH"

# coreutils
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export MANPATH="$(brew --prefix coreutils)libexec/gnuman:$MANPATH"

# gnu-sed
export PATH="$(brew --prefix gnu-sed)/libexec/gnubin:$PATH"
export MANPATH="$(brew --prefix gnu-sed)/libexec/gnuman:$MANPATH"

umask 0022

export EDITOR=vim
export PAGER=less

alias vi='vim'
alias ls='ls --color=auto --group-directories-first'
alias la='ls -A'
alias ll='ls -Alh'

eval $(dircolors ~/.dotfiles/dircolors.ansi-universal)

# http://qiita.com/delphinus/items/b04752bb5b64e6cc4ea9
export LESS='-g -i -M -R -S -W -z-4'

# 補完
source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
source $(brew --prefix)/etc/bash_completion.d/ag.bashcomp.sh
source $(brew --prefix)/etc/bash_completion.d/brew
source $(brew --prefix)/etc/bash_completion.d/tmux
complete -C '/usr/local/bin/aws_completer' aws

PS1='\[\e[1;34m\][\u@\H \W$(__git_ps1 " (%s)")]\$\[\e[m\] '

# golang
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# php
export PATH="vendor/bin:$PATH"

# Google Cloud SDK
if [ -d "$HOME/google-cloud-sdk" ]; then
    source $HOME/google-cloud-sdk/path.bash.inc
    source $HOME/google-cloud-sdk/completion.bash.inc
fi

# ~/binのコマンドを最優先
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# githubで管理しない設定は~/.bash_localに
if [ -e ~/.bash_local ]; then
    . ~/.bash_local
fi
