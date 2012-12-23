#!/bin/zsh
# Install local stuff
# Written by Lowe Thiderman (lowe.thiderman@gmail.com)
# Modified by Niclas Helbro (niclas.helbro@gmail.com)
# WTFPL.

# TODO:
# Uninstall
# Force install: install new links even if old ones exists.

loc=$0:a:h
# backup="$loc/old-configs-backup"

typeset -A apps
typeset -A dest

a=('./misc/mpd.conf')
apps[mpd]=$a
dest[./misc/mpd.conf]="$HOME/.mpdconf"

a=('./misc/i3status.conf')
apps[i3]=$a
dest[./misc/i3status.conf]="$HOME/.i3/i3status.conf"

a=('./misc/x11/Xdefaults')
apps[luakit]=$a
dest[./misc/x11/Xdefaults]="$HOME/.Xresources"

a=('./misc/x11/xinitrc')
apps[luakit]=$a
dest[./misc/x11/xinitrc]="$HOME/.xsession"

function _link() {
    src=$1
    dst=$2
    nobackup=true

    if [[ -n "$3" ]]; then
        nobackup=true
    fi

    if [[ ! -L "$dst" ]] ; then
        if [[ -f $dst ]] || [[ -d $dst ]] ; then
            if $nobackup; then
                print "is local link. doing nothing."
                return
            fi
            if [[ ! -d $backup ]] ; then
                mkdir -p $backup
            fi
            mv $dst $backup
            print -P "Backed up original %B%F{10}${dst}%f%b"
        fi

        mkdir -p $dst:h &> /dev/null
        ln -s $src:a $dst:a
        print -P "%B%F{10}${src#./}%f%b installed to %B%F{12}${dst}%b"
    else
        # print -P "%B%F{9}${src#./}%f%b is already installed"
    fi
}

function _install() {
    while [[ -n "$1" ]]; do
        src=$1

        dst=$dest[$src]
        if [[ -z "$dst" ]]; then
            dst="$HOME/.${${(s:/:)src}[-1]}"
        fi

        _link $src $dst
        shift
    done
}

if [[ -d .git ]]; then
    # If the zshrc file does not exist, we can assume that nothing has been cloned.
    if [[ ! -f ./zsh/zshrc ]]; then
        git submodule init
        git submodule update
        git submodule foreach git submodule init
        git submodule foreach git submodule update
    else
        git submodule update
        git submodule foreach git submodule update
    fi
fi

if [[ "$1" = "-u" ]]; then
    # This is actually it. Since the rows above do what they do, this step
    # really only needs to stop the script.
    print "Git updating done"
    exit 0
fi

# Install those detected
for app in ${(ko)apps}; do
    if [[ -x $commands[$app] ]] || [[ "$app" = "terminfo" ]] ; then
        _install ${(z)${apps[$app]}}
    fi
done

# These directories are required
mkdir -p $HOME/mpd &> /dev/null
