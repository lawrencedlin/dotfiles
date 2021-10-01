# Maybe run a script that scrapes a daily quote of the day and prints to stdout
# echo "Welcome back, Lawrence!"
export PATH="$PATH:/opt/homebrew/bin/:/opt/homebrew/anaconda3/bin/"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
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
# PS1+="\n$(printf '\[$(tput setaf 3)\]\u26a1\[$(tput sgr0)\]')"

# Without conda prompt
PS1="\[$(tput setaf 6)\]\$? $(parse_git_branch) \[$(tput sgr0)\]\[\033[31m\]\u@\[\033[38;5;27m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]in \[\033[38;5;47m\]\w\[$(tput sgr0)\] $(printf '\[$(tput setaf 3)\]\u26a1\[$(tput sgr0)\]')"

export PS1

export LSCOLORS=Eafxcxdxbxegedabagacad
alias ls='ls -G'
# Brew for intel chip and Brew for M1
intelbrew='/usr/local/bin/brew'

alias brew='/opt/homebrew/bin/brew'
# This call to brew list is slowing down new shells significantly...Is there a way I can call this only once per day?
# brew list > ~/dotfiles/brewlist.txt
alias s="cd ~/classes"

# Make shorthands for common flags
alias ll="ls -lh"

# Save a lot of typing for common commands
alias gs="git status"
alias gc="git commit"
alias ga="git add"
alias v="vim"

# Save you from mistyping
alias sl=ls

# Overwrite existing commands for better defaults
alias mv="mv -i"           # -i prompts before overwrite
alias mkdir="mkdir -p"     # -p make parent dirs as needed
alias df="df -h"           # -h prints human readable format

# Alias can be composed
alias la="ls -A"
alias lla="la -l"

# Changes starting pos of cursor
# tput cup 15 8

# Terminal size, may be handy to create a evil shell function later that puts prompt somewhere weird
alias term_size='echo "Rows=$(tput lines) Cols=$(tput cols)"'


