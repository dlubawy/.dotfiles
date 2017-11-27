# Run this after editing any of your dotfiles
alias src='source ~/.zshrc'

# Vim like exit
alias :q='exit'

# Shortcuts
alias dl="cd ~/Downloads"
alias dr="cd ~/GoogleDrive"
alias dt="cd ~/Desktop"
alias pj="cd ~/Projects"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Dotfiles shortcut
alias dots='cd ~/.dotfiles && ./.scripts/reset_scm'
alias ali='vim ~/.dotfiles/aliases'
alias scme='~/.dotfiles/scm_breeze/install.sh && src'

# tmux stuff
alias td='tmuxp load default'
alias tp='tmuxp load'

# For those times
alias yolo='kill -9'
alias wtf='ping google.com'
alias timenow='date +"%s"'

# Get week number
alias week='date +%V'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# signal aliases: just give them a pid
alias quit='kill -3'

# Tail
alias tf='tail -f'

# DNS Flusher
alias dnsflush='sudo unbound-control flush dns'
