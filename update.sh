#!/bin/sh

BACKUPDIR=~/Dropbox/backup-jack

sudo pacman -Rns $(pacman -Qtdq)  # removes orphaned packages

sudo pacman -Syu  # updates packages
yaourt -Su --aur  # updates AUR packages

printf "\nBacking up list of installed packages to $BACKUPDIR\n"
printf "There are $(pacman -Qq | wc -l) installed packages\n"

printf "List updated in $(date)\n\n$(pacman -Qqen)\n" > $BACKUPDIR/pkglist.txt
printf "List updated in $(date)\n\n$(pacman -Qqm)\n" > $BACKUPDIR/foreignpkgs.txt
