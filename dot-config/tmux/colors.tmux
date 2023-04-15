# This tmux statusbar config was created by tmuxline.vim
# Modified by Niclas Helbro
# <niclas dot helbro at gmail dot com>

# enable utf-8 on status bar
# set -g status on
# set -g status-utf8 on

# POSITION
set -g status-position bottom
set -g status-style dim

# COLORS
COLOR0="colour000"
COLOR1="colour001"
COLOR2="colour002"
COLOR3="colour003"
COLOR4="colour004"
COLOR5="colour005"
COLOR6="colour006"
COLOR7="colour007"
COLOR8="colour008"
COLOR9="colour009"
COLOR10="colour010"
COLOR11="colour011"
COLOR12="colour012"
COLOR13="colour013"
COLOR14="colour014"
COLOR15="colour015"

# USING 8 COLORS
set -g pane-border-style "fg=$COLOR0"
set -g pane-active-border-style "fg=$COLOR4"
set -g status-justify "left"
set -g status "on"
set -g status-style "none,bg=$COLOR8"
set -g status-left-style "none"
set -g status-right-style "none"
set -g status-right-length "100"
set -g status-left-length "100"
set -g message-style "fg=$COLOR0,bg=$COLOR6"
set -g message-command-style "fg=$COLOR4,bg=$COLOR0"
set -g mode-style "fg=$COLOR0,bg=$COLOR6"
set -g window-status-activity-style "none"
set -g window-status-separator ""
set -g window-status-style "BOLD,fg=$COLOR6,bg=$COLOR0"

# 'LEFTARROW=""'\
# 'LEFTARROW="◀"'
# 'RIGHTARROW=""'\
# 'RIGHTARROW="▶"'
# if-shell '[ "$(echo $TERM | grep 256color)" ]'\
# if-shell "$(echo $TERM | grep 256color)"\
#
# This
# if-shell "tmux show-environment -g TERM | grep 256color" \
#     'LEFTARROW="" ; RIGHTARROW="" ; TEST="screen-256color"'\
#     'LEFTARROW="" ; RIGHTARROW="" ; TEST="screen"'
#if-shell "tput colors | grep 256" \
#    'LEFTARROW="" ; RIGHTARROW="" ; TEST="screen-256color"'\
#    'LEFTARROW="" ; RIGHTARROW="" ; TEST="screen"'
#if-shell "tput colors | grep 256" \
#    'LEFTARROW="◀" ; RIGHTARROW="▶" ; TEST="screen-256color"'\
#    'LEFTARROW="" ; RIGHTARROW="" ; TEST="screen"'
#
# if-shell '[ "$(echo $TERM | grep 256color)" ]'\
#     'RIGHTARROW=""'\
#     'RIGHTARROW=""'

LEFTARROW=""
RIGHTARROW=""
# LEFTARROW=""
# RIGHTARROW=""
# LEFTARROW=""
# RIGHTARROW=""
# LEFTARROW=""
# RIGHTARROW=""

# If $TERM contains 256 colors, add nice powerline stuff else don't.
STATUS_LEFT="\
#[fg=$COLOR0,bg=$COLOR4,bold,nounderscore,noitalics] #S@#H \
#[fg=$COLOR4,bg=$COLOR8,nobold,nounderscore,noitalics]$RIGHTARROW\
"
WINDOW="\
#[fg=$COLOR6,bg=$COLOR8,nobold,nounderscore,noitalics] #I: #W \
"
WINDOW_CURRENT="\
#[fg=$COLOR8,bg=$COLOR6,nobold,nounderscore,noitalics]$RIGHTARROW\
#[fg=$COLOR0,bg=$COLOR6,bold,nounderscore,noitalics] #I: #W \
#[fg=$COLOR6,bg=$COLOR8,nobold,nounderscore,noitalics]$RIGHTARROW\
"
LOCAL_DATETIME="\
#[fg=$COLOR6,bg=$COLOR8,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=$COLOR0,bg=$COLOR6] %Y-%m-%d \
#[fg=$COLOR8,bg=$COLOR6,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=$COLOR4,bg=$COLOR8,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=$COLOR0,bg=$COLOR4,bold] %H:%M \
"
PALETTE="\
#[fg=$COLOR0,bg=$COLOR8,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=$COLOR7,bg=$COLOR0,nobold,nounderscore,noitalics] C0 \
#[fg=$COLOR1,bg=$COLOR0,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=$COLOR0,bg=$COLOR1,nobold,nounderscore,noitalics] C1 \
#[fg=$COLOR2,bg=$COLOR1,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=$COLOR0,bg=$COLOR2,nobold,nounderscore,noitalics] C2 \
#[fg=$COLOR3,bg=$COLOR2,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=$COLOR0,bg=$COLOR3,nobold,nounderscore,noitalics] C3 \
#[fg=$COLOR4,bg=$COLOR3,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=$COLOR0,bg=$COLOR4,nobold,nounderscore,noitalics] C4 \
#[fg=$COLOR5,bg=$COLOR4,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=$COLOR0,bg=$COLOR5,nobold,nounderscore,noitalics] C5 \
#[fg=$COLOR6,bg=$COLOR5,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=$COLOR0,bg=$COLOR6,nobold,nounderscore,noitalics] C6 \
#[fg=$COLOR7,bg=$COLOR6,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=$COLOR0,bg=$COLOR7,nobold,nounderscore,noitalics] C7 \
#[fg=$COLOR8,bg=$COLOR7,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=$COLOR8,bg=$COLOR8,nobold,nounderscore,noitalics]\
"

WORLD_TIME="\
 NY:#(TZ=America/New_York date +%%H:%%M) \
| WI:#(TZ=America/Chicago date +%%H:%%M) \
| AZ:#(TZ=America/Phoenix date +%%H:%%M) \
| CA:#(TZ=America/Los_Angeles date +%%H:%%M) "

STATUS_RIGHT="\
#{?SHOW_PALETTE,#{PALETTE},}\
$LOCAL_DATETIME\
#[fg=$COLOR4,bg=$COLOR8,bold]\
#{?SHOW_WORLD_TIME,$WORLD_TIME,}\
"

set -g status-left $STATUS_LEFT
set -g window-status-current-format $WINDOW_CURRENT
set -g window-status-format $WINDOW
set -g status-right $STATUS_RIGHT
