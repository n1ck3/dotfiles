# This tmux statusbar config was created by tmuxline.vim
# Modified by Niclas Helbro
# <niclas dot helbro at gmail dot com

# USING 8 COLORS
set -g status-justify "left"
set -g status "on"
set -g status-left-style "none"
set -g message-command-style "fg=#99B1C6,bg=#001C30"
set -g status-right-style "none"
set -g pane-border-style "fg=#001C30"
set -g pane-active-border-style "fg=#C0C0BF"
set -g status-style "none,bg=#001C30"
set -g message-style "fg=#99B1C6,bg=#001C30"
set -g status-right-length "100"
set -g status-left-length "100"
setw -g window-status-activity-style "none"
setw -g window-status-separator ""
setw -g window-status-style "BOLD,fg=#99B1C6,bg=#001C30"

# 'LEFTARROW=""'\
# 'LEFTARROW="◀"'
# 'RIGHTARROW=""'\
# 'RIGHTARROW="▶"'
if-shell '[ "$(echo $TERM | grep 256color)" ]'\
    'LEFTARROW=""'\
    'LEFTARROW=""'
if-shell '[ "$(echo $TERM | grep 256color)" ]'\
    'RIGHTARROW=""'\
    'RIGHTARROW=""'

# If $TERM contains 256 colors, add nice powerline stuff else don't.
set -g status-left "\
#[fg=#001C30,bg=#A9BBCA,BOLD] #S@#H \
#[fg=#A9BBCA,bg=#001C30,nobold,nounderscore,noitalics]$RIGHTARROW"
setw -g window-status-current-format "\
#[fg=#001C30,bg=#99B1C6,nobold,nounderscore,noitalics]$RIGHTARROW\
#[fg=#001C30,bg=#99B1C6,nobold,nounderscore,noitalics] #I:\
#[fg=#001C30,bg=#99B1C6,BOLD] #W \
#[fg=#99B1C6,bg=#001C30,nobold,nounderscore,noitalics]$RIGHTARROW"
setw -g window-status-format "\
#[fg=#99B1C6,bg=#001C30,nobold,nounderscore,noitalics] #I: #W "
set -g status-right "\
#[fg=#99B1C6,bg=#001C30,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=#001C30,bg=#99B1C6] %Y-%m-%d \
#[fg=#001C30,bg=#99B1C6,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=#A9BBCA,bg=#001C30,nobold,nounderscore,noitalics]$LEFTARROW\
#[fg=#001C30,bg=#A9BBCA] %H:%M "
