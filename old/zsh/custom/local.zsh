# Make sure we have nice console colors
source ~/.local/bin/set-console-colors.sh

# Source ZSH config
alias sc="source ~/.zshrc"

# Packman and yay aliases
function yayy() {
    yay $@ --noconfirm
}

# Misc exports
export EDITOR='vim'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=$PATH:$HOME/.local/bin
