#!/bin/bash 

# Delete broken symlinks in home directory
find ${HOME} -type l -follow -maxdepth 1 -exec rm {} \; 

dotfiles=($(find ${HOME}/dotfiles -name ".*" -maxdepth 2))
for dotfile in ${dotfiles[@]}; do
    if ! [[ ${dotfile##*/} =~ .git ]]; then # If file isnt git index 
        if $(ln -s "${dotfile}" "${HOME}/${dotfile##*/}" 2>/dev/null); then
            echo "Created symlink for ${dotfile}"
        fi
    fi
done
