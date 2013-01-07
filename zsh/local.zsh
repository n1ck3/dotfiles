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
# User custom whatever {{{
    # Complete parent dir on $ ..<TAB>
    zstyle ':completion:*' special-dirs true

    # Development aliases
    alias cdm='cd /srv/live'

    alias nr='sudo service nginx restart'
    alias tna='sudo tail -f /var/log/nginx/access.log'
    alias tne='sudo tail -f /var/log/nginx/error.log'

    alias ar='sudo service apache2 restart'
    alias tae='sudo tail -f /var/log/apache2/error.log'
    alias taa='sudo tail -f /var/log/apache2/access.log'

    alias dmmm="django-admin.py makemessages -a"
    alias dmcm="django-admin.py compilemessages"

    # Override Lowes ridiculous dr() bs.
    dr () {
        if [[ ! -f "manage.py" ]]
        then
            _zerror "No django manager found. Exiting"
            return 1
        fi

        echo -e "\nRemoving .pyc files"
        rmext pyc &> /dev/null
        echo -e "Removed .pyc files"
        python2 manage.py runserver 0.0.0.0:8000 --traceback
    }

    # ntpdate
    alias ntp="sudo ntpdate pool.ntp.org"

    # Stupid perl :@
    export LANGUAGE=en_US.UTF-8
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8

    if [ "$TERM" = "xterm" ] ; then
        export TERM="xterm-256color"
    fi

    alias mb="sshfs -o allow_other -o idmap=user nicke@b19.dyndns.org:/Volumes/bree/music ~/Music"
    alias umb="sudo umount -l ~/Music"

#}}}

# vim: ft=zsh fmr={{{,}}}
