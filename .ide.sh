#!/bin/bash
tmux new-window -n name
tmux split-window -v -t name.0
tmux split-window -h -t name.1
tmux split-window -h -t name.2

tmux send-keys -t name.0 'vim -c NERDTree' C-m
tmux send-keys -t name.1 'rails s' C-m
tmux send-keys -t name.2 'rails c' C-m
tmux send-keys -t name.3 "tmux select-layout main-horizontal" C-m
tmux send-keys -t name.3 "Y=$(expr $(tmux display -p '#{window_height}') / 3)" C-m
tmux send-keys -t name.3 'tmux resizep -t name.1 -y "${Y}"' C-m
tmux send-keys -t name.3 'clear' C-m
