# Put this file in ~/.config/fish/

alias ll "ls -l"
alias la "ls -A"
alias lla "ls -lA"

alias mv "mv -i"
alias cp "cp -i"

alias usage "du -bsh"
alias mount-data "sudo mount -t auto -v /dev/sda6 /media/matheus/Data/"

# sudo !!
alias fuck "sudo $history[1]"

function cs
	cd $argv; and ls
end
