# zshrc local user configuration by Lowe Thiderman (daethorian@ninjaloot.se)
# Released under the WTFPL (http://sam.zoy.org/wtfpl/).
#
# <github link>

# User settings {{{
    # Make sure we do not ls everytime we enter dirs. ;)
    export ZSH_NO_CHPWD="cunnie-o"
    BOX=$(uname)
# }}}
# Vagrant stuff {{{
    alias vh="vagrant ssh"
    alias vu="vagrant up"
    alias vs="vagrant status"
    alias vss="vagrant suspend"
    alias vr="vagrant resume"
    alias ve="vagrant reload"
    alias vp="vagrant provision"
    alias vh="vagrant halt"
    alias vi="vagrant init"
    alias vd="vagrant destroy"
    alias vb="vagrant box"
#}}}
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
#}}}

# vim: ft=zsh fmr={{{,}}}
