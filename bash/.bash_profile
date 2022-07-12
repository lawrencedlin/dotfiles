#!/bin/bash
echo "reading ${BASH_SOURCE[0]}"
# echo "Welcome back, Lawrence!"
export PATH="$PATH:/opt/homebrew/bin/:/opt/homebrew/anaconda3/bin/:${HOME}/scripts"
conda init bash > /dev/null
# export PATH="/Users/lawrencedlin/.ebcli-virtual-env/executables:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# With conda prompt
# PS1="\$? $CONDA_PROMPT_MODIFIER\$(parse_git_branch) \[$(tput sgr0)\]\[\033[31m\]\u@\[\033[38;5;27m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]in \[\033[38;5;47m\]\w\[$(tput sgr0)\] $(printf '\[$(tput setaf 3)\]\u26a1\[$(tput sgr0)\]')"
# Fix this so the prompt doesnt disappear

# Without conda prompt
PS1="\[$(tput setaf 6)\]\$?$(parse_git_branch) \[$(tput sgr0)\]\[\033[31m\]\u\[$(tput sgr0)\]@\[\033[38;5;27m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]in \[\033[38;5;47m\]\w\[$(tput sgr0)\]"
# PS1+="\n$(printf '\[$(tput setaf 3)\]\u26a1\[$(tput sgr0)\]')"
PS1+="\n\$ "

export PS1

export LSCOLORS=Eafxcxdxbxegedabagacad
alias ls='ls -G'
# Brew for intel chip and Brew for M1
alias intelbrew='/usr/local/bin/brew'

# alias brew='/opt/homebrew/bin/brew'

# Classes directory
alias s="cd ~/classes"

# Make shorthands for common flags
alias ll="ls -lh"

# Save a lot of typing for common commands
alias gs="git status"
alias gc="git commit"
alias ga="git add"

# Save you from mistyping
alias sl=ls

# Overwrite existing commands for better defaults
alias mv="mv -i"           # -i prompts before overwrite
alias mkdir="mkdir -p"     # -p make parent dirs as needed
alias df="df -h"           # -h prints human readable format

# Alias can be composed
alias la="ls -A"
alias lla="la -l"

# Terminal size, may be handy to create a evil shell function later that puts prompt somewhere weird
alias term_size='echo "Rows=$(tput lines) Cols=$(tput cols)"'


# Vim with python support, default would be /usr/bin/vim with no python support
alias vi="vim"
alias v="vi"
alias j="date >> ~/Documents/meditations.txt && vi ~/Documents/meditations.txt" # my journal
aws_keys='.aws_access_keys'
if [ -d ${aws_keys} ]; then
    source ${aws_keys}
fi
export PYTHONBREAKPOINT="ipdb.set_trace"
cdls() { cd "$@" && ls; }

# IEN specific config
if [ -d .ien_profile ]; then
source .ien_profile
fi
