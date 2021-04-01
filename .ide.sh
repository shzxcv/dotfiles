#!/bin/bash
tmux new-window -n name
tmux split-window -v -t name.0
tmux split-window -h -t name.1

tmux send-keys -t name.0 'vim -c NERDTree' C-m
tmux send-keys -t name.1 'foreman start' C-m
tmux send-keys -t name.2 "tmux select-layout main-horizontal" C-m
tmux send-keys -t name.2 "Y=$(expr $(tmux display -p '#{window_height}') / 3)" C-m
tmux send-keys -t name.2 'tmux resizep -t name.1 -y "${Y}"' C-m
tmux send-keys -t name.2 'clear' C-m
