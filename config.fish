# Put this file in ~/.config/fish/

alias ll "ls -l"
alias la "ls -A"
alias lla "ls -lA"

alias mv "mv -i"
alias cp "cp -i"
alias xflux "xflux -l -27.6 -g -48.5"

alias bye "shutdown 0"
alias usage "du -bsh"
alias mount-data "sudo mount -t auto -v /dev/sda6 /media/matheus/Data/"

function cs
	cd $argv; and ls
end
