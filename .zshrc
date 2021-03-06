HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

source\
	/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PROMPT="%1~ %# "
export EDITOR=vim

alias ls="ls --color=auto"
alias ll="ls -lh"
alias la="ls -A"
alias lla="ls -lhA"

alias mv="mv -iv"
alias cp="cp -iv"
alias rm="rm -Iv --one-file-system"

alias vim="vim -p"
alias grep="grep --color"
alias pacman="pacman --color auto"
alias yay="yay --color auto"

alias psg="ps -e | grep"
alias usage="du -bsh"

alias activate="source ./venv/bin/activate"
alias pipup="pip list --outdated --format=freeze | cut -d = -f 1 |\
	xargs -n1 pip install -U"
alias formatc="find . -type f -regex '.*\.\(c\|cpp\|h\)' -exec sh -c \
	'clang-format --style=file -i {} &' \;"

function cs() {
	cd $@ && ls
}

function vm() {
	qemu-system-x86_64 \
		-m 3G \
		-cpu host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time \
		-smp 2 \
		-machine type=pc,accel=kvm \
		-vga std \
		-net nic \
		-net user,smb="$HOME" \
		-usb -device usb-tablet \
		-monitor stdio \
		-drive file="$1",format=raw,aio=native,cache=none
}

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
	ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
	source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi
