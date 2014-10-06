#!/bin/bash
SESSION="hpc"

# svg
tmux -2 new-session -d -s $SESSION -n 'svg'
tmux send-keys "ssh c4-1" C-m
tmux send-keys "qs" C-m
# ft
tmux new-window -t $SESSION:2 -n 'ft'
tmux send-keys "ssh c4-1" C-m
tmux send-keys "qo" C-m
# vnx
tmux new-window -t $SESSION:3 -n 'vnx'
tmux send-keys "ssh nasadmin@cs1" C-m
tmux send-keys "export TERM=xterm; clear" C-m
tmux send-keys "/nas/bin/nas_inventory -list | egrep -v '( OK | Empty. )'" C-m

# Select initial window
tmux select-window -t $SESSION:1

# Attach
tmux -2 attach-session -t $SESSION
