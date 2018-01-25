#!/bin/sh
export XKB_DEFAULT_LAYOUT=se
export XKB_DEFAULT_OPTIONS=ctrl:nocaps
export XKB_REPEAT_DELAY=300
export XKB_REPEAT_RATE=50

if [ $# -eq 1 ]; then
    sway --config $1
else
    sway
fi
