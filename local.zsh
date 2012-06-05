# zshrc local user configuration by Lowe Thiderman (daethorian@ninjaloot.se)
# Released under the WTFPL (http://sam.zoy.org/wtfpl/).
#
# <github link>

# User settings {{{
    export ALIAS='nicke'
    # Set what kind of BOX we are on
    BOX=$(uname)

    # This has to be set...for now
    export PMODE=2

    # Make sure we do not ls everytime we enter dirs. ;)
    export ZSH_NO_CHPWD="cunnie-o"

    # Your main remote site. Currently not widely used. Backup and connection
    # testing functions are planned.
    export REMOTE='b19.dyndns.org'

    # Your full name. Used with git configurations.
    export FULLNAME="Niclas Helbro"

    # Your email adress. Used with git configurations.
    export EMAIL="${ALIAS}@$REMOTE"

    export ZCOLOR="default"

    export MAIL="$HOME/mail"

    export LOGS="$HOME/.local/logs"

    HISTFILE="$LOGS/zsh.history.log"
    HISTSIZE=100000
    SAVEHIST=100000

    export HOMEBIN="$HOME/.local/bin"

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

    LSOPTS=''
    if [ $BOX = "Darwin" ] ; then
        LSOPTS='--color=auto'
    elif [ $BOX = "Linux" ] ; then
        LSOPTS='--color=auto --group-directories-first'
    fi

    export LSOPTS=$LSOPTS
    export GREPOPTS='--color=auto'

# }}}
# User zsh specifics {{{
    export ZDUMPDIR=

    # The globbing!
    setopt extendedglob
    umask 022
# }}}
# Modules {{{
    # zsh module directory
    export ZMODDIR="$ZSHCONFDIR/modules"

    # Core modules are recommended and should most probably always be loaded.
    for i in $ZMODDIR/*.zsh(n) ; do
        _modload $i
    done

    # Shell syntax highlighting. Cannot be sourced by _modload
    source $ZMODDIR/syntax.zsh

    # Application specific modules; loaded if they are installed
    for m in $ZMODDIR/apps/* ; do
        app=${${m##*/}%\.*}  # Strip down to the actual executable name
        if has $app ; then
            _modload "apps/$app"
        fi
    done
    unset m
# }}}
# User custom whatever {{{
    # Complete parent dir on $ ..<TAB>
    zstyle ':completion:*' special-dirs true

    # Development aliases
    if [ $BOX = "Darwin" ] ; then
        alias mat='sshfs at:/srv/live/ $HOME/dev/django/at -oauto_cache,reconnect,volname=at'
        alias umat='umount at'
        alias umfat='sudo diskutil unmount force /Users/nicke/dev/django/at'

        alias mnt='sshfs nt:/srv/live/ $HOME/dev/django/nt -oauto_cache,reconnect,volname=nt'
        alias umnt='umount nt'
        alias umfnt='sudo diskutil unmount force /Users/nicke/dev/django/nt'

        alias mvs='sshfs vs:/srv/live/ $HOME/dev/django/vs -oauto_cache,reconnect,volname=vs'
        alias umvs='umount vs'
        alias umfvs='sudo diskutil unmount force /Users/nicke/dev/django/vs'

    elif [ $BOX = "Linux" ] ; then
        alias cdm='cd /srv/live'

        alias nr='service nginx restart'
        alias tna='tail -f /var/log/nginx/access.log'
        alias tne='tail -f /var/log/nginx/error.log'

        alias ar='service apache2 restart'
        alias tae='tail -f /var/log/apache2/error.log'
        alias taa='tail -f /var/log/apache2/access.log'

        alias dmmm="django-admin.py makemessages -a"
        alias dmcm="django-admin.py compilemessages"

    fi

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

#}}}

# vim: ft=zsh fmr={{{,}}}
