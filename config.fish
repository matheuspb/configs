# Put this file in ~/.config/fish/

alias ll "ls -l"
alias la "ls -A"
alias lla "ls -lA"

alias mv "mv -i"
alias cp "cp -i"

alias usage "du -bsh"
alias mount-data "sudo mount -t auto -v /dev/sda6 /media/matheus/Data/"

# sudo !!
function fuck
	eval sudo $history[1];
end

function cs
	cd $argv; and ls
end
