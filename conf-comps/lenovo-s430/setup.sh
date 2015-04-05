#!/usr/bin/env bash

# Make sure we are in the right place and remember where that is
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )

# Console keymaps
VCONSOLE_SRC="$DIR/keymaps/se-lenovo-s430.map.gz"
VCONSOLE_DEST="/usr/share/kbd/keymaps/se-lenovo-s430.map.gz"
if [[ ! -L "$VCONSOLE_DEST" ]] ; then
  echo "Linking vconsole keymaps"
  sudo ln -s $VCONSOLE_SRC $VCONSOLE_DEST
fi
echo "KEYMAP=se-lenovo-s430" | sudo tee /etc/vconsole.conf > /dev/null


# X11 keymaps
X11_SRC="$DIR/x11/se-lenovo-s430"
X11_DEST="/usr/share/X11/xkb/symbols/se-lenovo-s430"
if [[ ! -L "$X11_DEST" ]] ; then
  echo "Linking X11 keymaps"
  sudo ln -s $X11_SRC $X11_DEST
fi
