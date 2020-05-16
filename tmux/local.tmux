# Fix color scheme mishap. Shoule be removed when daethorian updates super-repo
# to fix this.

# Color fixes
# The panes {
    # set -g pane-border-bg colour232
    # set -g pane-border-fg colour232

    # set -g pane-active-border-style bg colour234
    # set -g pane-active-border-fg colour031

    # set -g pane-active-border-style bg brightred
    # set -g pane-active-border-style fg colour134

    # set -g pane-border-style fg=colour234
    # set -g pane-active-border-style fg=colour134
# }

%if "#{==:#{TERM},linux}"
    set -g default-terminal "screen"
%else
    set -g default-terminal "screen-256color"
    # set -ga terminal-overrides ",*256col*:Tc"
%endif

# VIM style selection
# bind-key -T copy-mode-vi 'v' send-keys -X begin-selection
# bind-key -T copy-mode-vi '^C' send-keys -X rectangle-toggle
# bind-key -T copy-mode-vi '' send-keys -X copy-pipe-and-cancel "xclip -i -sel clip"
# unbind-key copy-mode-vi 'y'
# bind -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "xclip -i -f -selection primary | xclip -i selection clipboard"
# bind -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "xsel -i --clipboard"

# if-shell "echo $TERM | grep 256color" "set -g default-terminal screen-256color" "set -g default-terminal screen"
# set-option -sa default-terminal "screen-256color"
# set -ga terminal-overrides ",*256color:Tc"
# set -ga default-terminal "xterm-256color"

bind ^w kill-window
bind ^p kill-pane

set -sg escape-time 20

set -g mouse on
# set -g mouse-select-pane on
set -g @yank_selection_mouse 'clipboard'

unbind r
bind-key r source-file ~/.tmux.conf \; display 'Config reloaded!'
bind-key R command-prompt -p rename: "rename-window %%"

source-file ~/.tmux/local-colors.tmux
# set -g  default-terminal "screen-255color"
# set -ga  default-terminal "xterm-256color"
# set -ga terminal-overrides ",xterm-256color:Tc"
# set-option -sa terminal-overrides ",xterm*:Tc"
# needed for proper nvim/tmux/base16 colors
# set -ga terminal-overrides ",xterm-256color:Tc"
