# Make sure we have nice console colors
# source ~/bin/set-console-colors.sh
source $HOME/.cache/wal/colors-tty.sh

# Source ZSH config
alias sso="source ~/.zshrc"

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
# export XDG_SESSION_TYPE=x11

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

# Bell
alias bell="echo '\a'"
# fi
