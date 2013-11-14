# zshrc local user configuration by Lowe Thiderman (daethorian@ninjaloot.se)
# Released under the WTFPL (http://sam.zoy.org/wtfpl/).
#
# <github link>

# User settings {{{
    # Make sure we do not ls everytime we enter dirs. ;)
    export ZSH_NO_CHPWD="cunnie-o"

    # Your path. Remember to separate additional directories with a colon.
    local _PATH="$HOME/bin:$HOMEBIN"
    _PATH+=:/opt/local/bin:/opt/local/sbin:/opt/local/libexec/gnubin

    # If $_PATH is not in $PATH, add it, but only once.
    if ! [[ $PATH =~ "$_PATH" ]] ; then
        export PATH=$_PATH:$PATH
    fi

    # Your man path. Remember to separate additional directories with a colon.
    local _MANPATH=/opt/local/share/man

    # If $_MANPATH is not in $MANPATH, add it, but only once.
    if ! [[ $MANPATH =~ "$_MANPATH" ]] ; then
        export MANPATH=$_MANPATH:$MANPATH
    fi

    # Set what kind of BOX we are on
    BOX=$(uname)
    LSOPTS=''
    if [ $BOX = "Darwin" ] ; then
        LSOPTS='--color=auto'
    elif [ $BOX = "Linux" ] ; then
        LSOPTS='--color=auto --group-directories-first'
    fi

    export LSOPTS=$LSOPTS
    export GREPOPTS='--color=auto'

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

    if [ "$TERM" = "xterm" ] ; then
        export TERM="xterm-256color"
    fi

    alias mb="sshfs -o allow_other -o idmap=user nicke@b19.dyndns.org:/Volumes/bree/music ~/Music"
    alias umb="sudo umount -l ~/Music"

    if [ $BOX = "Linux" ] ; then
        alias open="xdg-open"
    fi

#}}}

# vim: ft=zsh fmr={{{,}}}
