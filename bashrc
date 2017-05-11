# User dependent .bashrc file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
    if [ -f ~/.bash_completion ]; then
        . ~/.bash_completion
    fi
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done

if [ -f ~/.cygwin ]; then
    . ~/.cygwin
fi

if [ -f ~/.linux ]; then
    . ~/.linux
fi

# Git improvements
[ -s "/home/Drew/.scm_breeze/scm_breeze.sh" ] && source "/home/Drew/.scm_breeze/scm_breeze.sh"
