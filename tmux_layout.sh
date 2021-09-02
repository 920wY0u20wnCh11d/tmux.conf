#!/bin/bash

port=22223
if [[  -n "$1" ]]
then
	port=$1
fi

#add listener
tmux new-session -d
tmux rename-window -t 0 listener
tmux split-window -h "while true;do nc -lvnp $port;sleep 1s;done"
tmux split-window -v "while true;do nc -lvnp $(($port+1));sleep 1s;done"
tmux split-window -v -l 70% -t 0
tmux split-window -v -l 60% -t 0
#tmux resize-pane -y 30 -t 0
#tmux resize-pane -y 15 -t 1

#add git
tmux new-window -n git -c ~/Desktop/git
tmux split-window -h -c ~/Desktop/git

#add bash#1
tmux new-window
tmux split-window -h 


#add bash #2
tmux new-window
tmux split-window -h 

#add bash #3
tmux new-window
tmux split-window -h 

#add openvpn
tmux new-window -n openvpn
tmux split-window -h "ipconfig /all"

tmux select-window -t 0
tmux attach-session -d
