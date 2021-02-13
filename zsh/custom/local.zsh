# Source .profile -- env variables and the like
source ~/.profile

# Make sure we have nice console colors
cat $XDG_CACHE_HOME/wal/sequences
source $XDG_CACHE_HOME/wal/colors-tty.sh

# Source ZSH config
alias sso="source $XDG_CONFIG_HOME/zsh/zshrc"

# Packman and yay aliases
function yayy() {
    yay $@ --noconfirm
}
function par() {
    sudo pacman -Rns $(pacman -Qtdq)
}

# Misc exports
export EDITOR='vim'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.ansie/scripts
export PATH=$PATH:$HOME/df

# Git aliases ammendments and overrides
alias gs="git status"
alias gu="git pull"
unalias gl
alias gl="git log"
alias gls="git log --stat"

# Systemctl stuff
alias sc="sudo systemctl"
alias scs="sc status"
alias sct="sc start"
alias sco="sc stop"
alias scr="sc restart"
alias scw="scr netctl-auto@wlp4s0.service"

# Hehe vim
alias :q="exit"

# Bell
alias bell="echo '\a'"
# fi

# dafuq
eval $(thefuck --alias)

# Ping Google
alias pg="ping -c 1 google.com"

# Borg thangs
export BORG_RSH="ssh -i ~/.ssh/borg"
export BORG_LOCAL="root@10.0.1.10:/mnt/backups/$HOST"
export BORG_REMOTE="nhelbrouser1@deepstore.lima-labs.com:/home/nhelbrouser1/backups/$HOST"
