#!/bin/bash 

PROGRAMS=(vim ideavim bash zsh hyper)

for program in ${PROGRAMS[*]}; do
    # Find all dotfiles in program folders
    dotfile=$(pwd)/${program}/ 
    for df in ${dotfile}.*; do # .* expands in for loop, but will be stored as string if in dotfile
        if [[ $df =~ .[A-Za-z]+$ ]]; then
            file=${df##*/} # Greedy match for everything deleteing everything before slash. Includes / because idk
            ln -s "${dotfile}${file}" "${HOME}/${file}"
            if [[ ${?} -eq 0 ]]; then
                echo "Created symlink to ${dotfile}${file}"
            fi
        fi
    done
done


for dotfile in *; do
    # Find all dotfiles in current directory 
    dotfile=$(pwd)/.*
    for df in ${dotfile}; do # .* expands in for loop, but will be stored as string if in dotfile
        ln -s "${df}" "${HOME}/${df}"
            if [[ ${?} -eq 0 ]]; then
                echo "Created symlink to ${df}"
            fi
    done
done

