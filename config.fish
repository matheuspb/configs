# Put this file in ~/.config/fish/

export CC=clang
export CXX=clang++
export EDITOR=vim

alias ll  "ls -l"
alias la  "ls -A"
alias lla "ls -lA"
alias lsd "ls -l | grep '^d'"

alias mv "mv -iv"
alias cp "cp -iv"
alias rm "rm -Iv --one-file-system"

alias vim "vim -p"

alias usage "du -bsh"
alias mount-data "sudo mount -t auto -v /dev/sda6 /media/matheus/Data/"

# sudo !!
function fuck
	eval sudo $history[1];
end

function cs
	cd $argv; and ls
end

function dig
	if test (count $argv) -eq 1
		find . -iname "*$argv[1]*"
	else if test (count $argv) -eq 2
		find $argv[1] -iname "*$argv[2]*"
	else
		echo "No arguments"
	end
end
