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
brew list > ~/dotfiles/brewlist.txt
