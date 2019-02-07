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

    set -g pane-border-style fg=colour234
    set -g pane-active-border-style fg=colour134
# }

# VIM style selection
# bind-key -T copy-mode-vi 'v' send-keys -X begin-selection
# bind-key -T copy-mode-vi '^C' send-keys -X rectangle-toggle
# bind-key -T copy-mode-vi '' send-keys -X copy-pipe-and-cancel "xclip -i -sel clip"
# unbind-key copy-mode-vi 'y'
# bind -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "xclip -i -f -selection primary | xclip -i selection clipboard"
# bind -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "xsel -i --clipboard"

bind ^w kill-window
bind ^p kill-pane

set -sg escape-time 20
