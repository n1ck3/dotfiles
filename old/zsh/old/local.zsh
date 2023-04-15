# zshrc local user configuration by Niclas Helbro (niclas.helbro@gmail.com)
# Released under the WTFPL (http://sam.zoy.org/wtfpl/).
#
# <github link>

# User settings {{{
    # Make sure we do not ls everytime we enter dirs. ;)
    export ZSH_NO_CHPWD="cunnie-o"
    BOX=$(uname)
# }}}

# Docker aliases {{{
    alias dcu="docker-compose up"
    alias dcub="docker-compose up --build"
    alias dcd="docker-compose down"
    alias dcdx="docker-compose down --rmi all --remove-orphans"
    alias dcr="dcdx && dcub"
    alias dil="docker image list"
# }}}

# Tmux aliases {{{
    alias tls="tmux ls"
    alias ta="tmux attach"
# }}}

# User custom whatever {{{
    # Complete parent dir on $ ..<TAB>
    zstyle ':completion:*' special-dirs true

    # ntpdate
    # TODO: Fix plz.
    # alias ntp=""

    if [[ "$TERM" == "xterm" || "$TERM" == "rxvt-unicode-256color" ]] ; then
        export TERM="xterm-256color"
    fi

    if [[ "$BOX" == "Linux" ]] ; then
        alias open="xdg-open"
    fi

    # Make sure to unbreak ls on OSX and FreeBSD boxes
    if [[ $BOX == "Darwin" ]] ; then
      unalias ls
    elif [[ $BOX == "FreeBSD" ]] ; then
      unalias ls
    fi

    # Fix rvm path on OSX
    if [[ $BOX == "Darwin" ]] ; then
      PATH="/usr/local/bin:/usr/local/sbin:$PATH"
      if [[ -f $HOME/.rvm/scripts/rvm ]] ; then
        source $HOME/.rvm/scripts/rvm
      fi
    fi
# }}}


# Unfuck zsh bindings {{{
    bindkey -r "^[h"
    bindkey -r "^[j"
    bindkey -r "^[k"
    bindkey -r "^[l"
    bindkey -r "^[s"
# }}}

# Sway Env Variables {{{
    export XKB_DEFAULT_LAYOUT=se
    export XKB_DEFAULT_OPTIONS=ctrl:nocaps
    export WAYLAND_WM=sway
    export WLC_REPEAT_DELAY=330
    export WLC_REPEAT_RATE=45
# }}}

# DAFUQ?
eval "$(thefuck --alias)"

# vim: ft=zsh fmr={{{,}}}
