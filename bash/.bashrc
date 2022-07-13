# .bashrc
# ---------- INITIALIZATION ----------
echo "reading ${BASH_SOURCE[0]}"

# ---------- FUNCTIONS ----------

cdls() { cd "$@" && ls; }

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# ---------- ENV VARIABLES ----------
export PYTHONBREAKPOINT="ipdb.set_trace"
export LSCOLORS=Eafxcxdxbxegedabagacad

# Expand the history size
export HISTFILESIZE=10000
export HISTSIZE=500
# Don't put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

# Color for manpages in less makes manpages a little easier to read
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
# ---------- PROMPT ----------
PS1="\[$(tput setaf 6)\]\$?$(parse_git_branch) \[$(tput sgr0)\]\[\033[31m\]\u\[$(tput sgr0)\]@\[\033[38;5;27m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]in \[\033[38;5;47m\]\w\[$(tput sgr0)\]"
# PS1+="\n$(printf '\[$(tput setaf 3)\]\u26a1\[$(tput sgr0)\]')"
PS1+="\n\$ "

export PS1


# ---------- ALIASES ----------
alias ls='ls -G'
# Make shorthands for common flags
alias ll="ls -lh"

# Save a lot of typing for common commands
alias gs="git status"
alias gc="git commit"
alias ga="git add"

# Save you from mistyping
alias sl=ls

# Overwrite existing commands for better defaults
alias cp="cp -i" 
alias mv="mv -i"           # -i prompts before overwrite
alias mkdir="mkdir -p"     # -p make parent dirs as needed
alias df="df -h"           # -h prints human readable format
alias rm="rm -v"

# Alias can be composed
alias la="ls -A"
alias lla="la -l"

# Vim with python support, default would be /usr/bin/vim with no python support
alias vi="vim"
alias v="vi"

# ---------- LOCAL CONFIG ----------
if [ -e ~/.bashrc_local ]; then
    source ~/.bashrc_local
fi

# ---------- OPTION ----------
# To see curr optons
# set -o 
## Debugging
# Print expanded commands
# set -o xtrace
# Exit scripts on error
# set -o errexit
# Exit script when reference unset variable
# set -o errunset
# autocorrect for cd 
shopt -s cdspell
# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize
# Causes bash to append to history instead of overwriting it so if you start a new terminal, you have old session history
shopt -s histappend
PROMPT_COMMAND='history -a'

