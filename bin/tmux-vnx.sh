#!/bin/bash
SESSION="vnx"

# cs1 
tmux -2 new-session -d -s $SESSION -n 'vnx'
tmux send-keys "ssh nasadmin@cs1" C-m
tmux send-keys "export TERM=xterm; clear" C-m
tmux send-keys "/nas/bin/nas_inventory -list | egrep -v '( OK | Empty. )'" C-m
# logs
## To continuosly monitor the log use server_log server_2 -f
tmux new-window -t $SESSION:2 -n 'log'
tmux split-window -v
tmux select-pane -t 0
tmux send-keys "ssh nasadmin@cs1" C-m
tmux send-keys "export TERM=xterm; clear" C-m
tmux send-keys "server_log server_2 | tail -n 30" C-m
tmux select-pane -t 1
tmux send-keys "ssh nasadmin@cs1" C-m
tmux send-keys "export TERM=xterm; clear" C-m
tmux send-keys "server_log server_3 | tail -n 30" C-m
# hardware
tmux new-window -t $SESSION:3 -n 'hardware'
tmux send-keys "ssh nasadmin@cs1" C-m
tmux send-keys "export TERM=xterm; clear" C-m
tmux send-keys "/nas/bin/nas_inventory -list | egrep -v '( OK | Empty. )'" C-m
tmux send-keys "/nas/bin/nas_storage -check -all" C-m
# stats
#server_stats server_2 -monitor fs.filesystem -i 10 -te no
#server_stats server_2 -monitor fs.filesystem.Home_FT -i 10 -te no
#server_stats server_2 -monitor fs.filesystem.Store_meteogalicia -i 4 -te no
#server_stats server_2 -monitor nfs.client -i 10 -te no
#server_stats server_2 -monitor nfs.user -i 10 -te no
#server_stats server_2 -monitor fs.filesystem -i 10 -te no
#server_stats server_2 -monitor fs.filesystem.Home_FT -i 10 -te no
#Para ver todos los grupos de estadisticas disponibles utilizar:
# server_stats server_2 -list
#Para ver detalles sobre los campos que muestra cada estadistica:
# server_stats server_2 -info

tmux new-window -t $SESSION:4 -n 'stats'
tmux split-window -v
tmux select-pane -t 0
tmux send-keys "ssh nasadmin@cs1" C-m
tmux send-keys "export TERM=xterm; clear" C-m
tmux send-keys "server_stats server_2 -monitor metaVolumes-std -i 30 -te no -count 1" C-m
tmux select-pane -t 1
tmux send-keys "ssh nasadmin@cs1" C-m
tmux send-keys "export TERM=xterm; clear" C-m
tmux send-keys "server_stats server_3 -monitor metaVolumes-std -i 30 -te no -count 1" C-m
# client
tmux new-window -t $SESSION:5 -n 'client'
tmux split-window -v
tmux select-pane -t 0
tmux send-keys "ssh nasadmin@cs1" C-m
tmux send-keys "export TERM=xterm; clear" C-m
tmux send-keys "server_stats server_2 -monitor nfs.client -i 30 -te no -count 1" C-m
tmux select-pane -t 1
tmux send-keys "ssh nasadmin@cs1" C-m
tmux send-keys "export TERM=xterm; clear" C-m
tmux send-keys "server_stats server_3 -monitor nfs.client -i 30 -te no -count 1" C-m
# user
tmux new-window -t $SESSION:6 -n 'user'
tmux split-window -v
tmux select-pane -t 0
tmux send-keys "ssh nasadmin@cs1" C-m
tmux send-keys "export TERM=xterm; clear" C-m
tmux send-keys "server_stats server_2 -monitor nfs.user -i 30 -te no -count 1" C-m
tmux select-pane -t 1
tmux send-keys "ssh nasadmin@cs1" C-m
tmux send-keys "export TERM=xterm; clear" C-m
tmux send-keys "server_stats server_3 -monitor nfs.user -i 30 -te no -count 1" C-m

#tmux split-window -v
#tmux resize-pane -D 20

# Select initial window
tmux select-window -t $SESSION:1

# Attach
tmux -2 attach-session -t $SESSION
