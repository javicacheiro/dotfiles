#!/bin/bash
SESSION="hadoop"

tmux -2 new-session -d -s $SESSION -n 'c4-5'

# Master Shell
tmux send-keys "ssh hadoop@c4-5" C-m
tmux send-keys "hadoop-status.sh" C-m
# Logs
tmux new-window -t $SESSION:2 -n 'Logs'
tmux split-window -h
tmux select-pane -t 0
tmux send-keys "ssh hadoop@c4-5" C-m
tmux send-keys "tailf /opt/cesga/hadoop/logs/hadoop-hadoop-namenode-compute-4-5.local.log" C-m
tmux select-pane -t 1
tmux send-keys "ssh hadoop@c4-5" C-m
tmux send-keys "tailf /opt/cesga/hadoop/logs/hadoop-hadoop-jobtracker-compute-4-5.local.log" C-m
# Top
tmux new-window -t $SESSION:3 -n 'Top'
#tmux split-window -v
#tmux resize-pane -D 20
tmux select-pane -t 0
tmux send-keys "ssh hadoop@c4-5" C-m
tmux send-keys "top" C-m

# Select initial window
tmux select-window -t $SESSION:1

# Attach
tmux -2 attach-session -t $SESSION
