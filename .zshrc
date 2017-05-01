HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

zstyle :compinstall filename '/home/matheus/.zshrc'

autoload -Uz compinit
compinit

source\
	/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PROMPT="%1~ %# "
export CC=clang
export CXX=clang++
export EDITOR=vim

alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -A"
alias lla="ls -lA"

alias mv="mv -iv"
alias cp="cp -iv"
alias rm="rm -Iv --one-file-system"

alias vim="vim -p"

alias usage="du -bsh"
alias mount-data="sudo mount -t auto -v /dev/sda6 /media/matheus/Data/"
alias spm="sudo pacman"

function cs() {
	cd $@ && ls
}
