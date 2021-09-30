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
export PS1="$CONDA_PROMPT_MODIFIER\$(parse_git_branch) [\[$(tput sgr0)\]\[\033[38;5;27m\]\H\[$(tput sgr0)\]] \[$(tput sgr0)\]\[\033[38;5;47m\]\w\[$(tput sgr0)\] \\$ \[$(tput sgr0)\]"

export LSCOLORS=Eafxcxdxbxegedabagacad
alias ls='ls -G'
# Brew for intel chip and Brew for M1
intelbrew='/usr/local/bin/brew'

alias brew='/opt/homebrew/bin/brew'
# This call to brew list is slowing down new shells significantly...Is there a way I can call this only once per day?
# brew list > ~/dotfiles/brewlist.txt
s=~/classes

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
