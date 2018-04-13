# No delay for escape key
set -sg escape-time 0

# Bindings
set -g prefix C-a
unbind C-b
bind C-a send-prefix
bind | split-window -h
bind - split-window -v
bind j resize-pane -D 10
bind k resize-pane -U 10
bind l resize-pane -L 10
bind h resize-pane -R 10
