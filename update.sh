#!/bin/sh

BACKUPDIR=~/Dropbox/backup-"$HOSTNAME"

sudo pacman -Syu --noconfirm  # updates packages
yaourt -Su --aur --noconfirm  # updates AUR packages

sudo pacman -Rns $(pacman -Qtdq) --noconfirm  # removes orphaned packages

printf "\nBacking up list of installed packages to $BACKUPDIR\n"
printf "There are $(pacman -Qq | wc -l) installed packages\n"

printf "List updated in $(date)\n\n$(pacman -Qqen)\n" > $BACKUPDIR/pkglist.txt
printf "List updated in $(date)\n\n$(pacman -Qqm)\n" > $BACKUPDIR/foreignpkgs.txt
