#!/bin/bash

PROGRAMS=(vim ideavim bash zsh .hyper.js)

for program in ${PROGRAMS[*]}; do
    # Find all dotfiles in program folders
    # -E extended regexp -o only matching parts
    for dotfile in $(grep -E -o '([^\/]+$)' <(find $program -type f -maxdepth 1) ); do
	# Debuggin
	# echo $HOME/$program/$dotfile
	# echo $HOME/$dotfile
        ln -s $HOME/$program/$dotfile ${HOME}/$dotfile
    done
done
echo 'Done!'


#    for dotfile_full in <(find $program -type f -maxdepth 1) ); do
#	echo $dotfile_full
	#$(grep -E -o '([^\/]+$)' <(echo $dotfile_full) | echo)	
