#!/usr/bin/env bash

# Make sure we are in the right place and remember where that is
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )

echo Run the following commands:

# Console keymaps
echo "sudo ln -s $DIR/files/sv-lenovo-s430.map.gz /usr/share/kbd/keymaps/sv-lenovo-s430.map.gz"

# X11 keymaps
echo "sudo ln -s $DIR/files/sv-lenovo-s430 /usr/share/X11/xkb/symbols/sv-lenovo-s430"
