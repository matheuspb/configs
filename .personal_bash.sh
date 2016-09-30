# Put this file on home folder and
# put the lines below in ~/.bashrc
#
# if [ -f ~/.personal_bash.sh ]; then
#     . ~/.personal_bash.sh
# fi

alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'

function cs () { cd "$@" && ls; }
function branch () { echo $(__git_ps1); }

alias bye='sudo shutdown 0'

# prompt
PS1='\W$(__git_ps1) $ '

