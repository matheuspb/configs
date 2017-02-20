# Put this file in ~/.config/fish/

alias ll "ls -l"
alias la "ls -A"
alias lla "ls -lA"

alias mv "mv -iv"
alias cp "cp -iv"
alias rm "rm -Iv --one-file-system"

alias usage "du -bsh"
alias mount-data "sudo mount -t auto -v /dev/sda6 /media/matheus/Data/"
alias server "python3 -m http.server;"

# sudo !!
function fuck
	eval sudo $history[1];
end

function cs
	cd $argv; and ls
end
